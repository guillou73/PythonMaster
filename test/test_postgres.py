import unittest
from unittest.mock import patch, MagicMock
import pandas as pd
from io import StringIO
from app import connect_to_postgres, read_csv_file, write_to_postgres, close_connection, app

class TestApp(unittest.TestCase):

    @patch('app.create_engine')
    def test_connect_to_postgres_success(self, mock_create_engine):
        # Mocking successful engine creation
        mock_engine = MagicMock()
        mock_create_engine.return_value = mock_engine

        engine = connect_to_postgres()
        self.assertEqual(engine, mock_engine)
        mock_create_engine.assert_called_once_with('postgresql://consultants:WelcomeItc%402022@18.132.73.146:5432/testdb')

    @patch('app.create_engine')
    def test_connect_to_postgres_failure(self, mock_create_engine):
        # Simulate an exception during connection
        mock_create_engine.side_effect = Exception("Connection failed")

        engine = connect_to_postgres()
        self.assertIsNone(engine)

    @patch('app.pd.read_csv')
    def test_read_csv_file_success(self, mock_read_csv):
        # Mock pandas read_csv to return a DataFrame
        mock_df = pd.DataFrame({'city': ['London', 'Manchester'], 'population': [9000000, 5000000]})
        mock_read_csv.return_value = mock_df

        df = read_csv_file("D:\\SampleData\\uk_cities.csv")
        self.assertEqual(df.shape, (2, 2))
        self.assertEqual(df.columns.tolist(), ['city', 'population'])

    @patch('app.pd.read_csv')
    def test_read_csv_file_failure(self, mock_read_csv):
        # Simulate an exception when reading the file
        mock_read_csv.side_effect = Exception("File not found")

        df = read_csv_file("D:\\SampleData\\uk_cities.csv")
        self.assertIsNone(df)

    @patch('app.create_engine')
    @patch('app.pd.DataFrame.to_sql')
    def test_write_to_postgres_success(self, mock_to_sql, mock_create_engine):
        # Mock a successful engine and pandas to_sql
        mock_engine = MagicMock()
        mock_create_engine.return_value = mock_engine
        mock_df = pd.DataFrame({'city': ['London', 'Manchester'], 'population': [9000000, 5000000]})

        write_to_postgres(mock_engine, mock_df, "UKCityMaster")
        mock_df.to_sql.assert_called_once_with("UKCityMaster", mock_engine, if_exists='replace', index=False)

    @patch('app.create_engine')
    def test_write_to_postgres_failure(self, mock_create_engine):
        # Simulate a failure in writing to the database
        mock_engine = MagicMock()
        mock_create_engine.return_value = mock_engine
        mock_df = pd.DataFrame({'city': ['London', 'Manchester'], 'population': [9000000, 5000000]})
        mock_df.to_sql.side_effect = Exception("Error writing to PostgreSQL")

        # Ensure no exception is raised, but we print the error
        write_to_postgres(mock_engine, mock_df, "UKCityMaster")

    @patch('app.create_engine')
    @patch('app.pd.read_csv')
    @patch('app.pd.DataFrame.to_sql')
    def test_main_success(self, mock_to_sql, mock_read_csv, mock_create_engine):
        # Mocking all necessary components for the main function
        mock_df = pd.DataFrame({'city': ['London', 'Manchester'], 'population': [9000000, 5000000]})
        mock_read_csv.return_value = mock_df
        mock_engine = MagicMock()
        mock_create_engine.return_value = mock_engine

        # Run the main function (which internally calls the other methods)
        with patch('app.print') as mock_print:
            main()

        mock_create_engine.assert_called_once()
        mock_read_csv.assert_called_once_with("D:\\SampleData\\uk_cities.csv")
        mock_to_sql.assert_called_once_with("UKCityMaster", mock_engine, if_exists='replace', index=False)

    @patch('app.create_engine')
    def test_close_connection(self, mock_create_engine):
        mock_engine = MagicMock()
        close_connection(mock_engine)
        mock_engine.dispose.assert_called_once()

    @patch('app.sessionmaker')
    @patch('app.connect_to_postgres')
    def test_get_data_success(self, mock_connect, mock_sessionmaker):
        # Mock connection and session
        mock_engine = MagicMock()
        mock_connect.return_value = mock_engine
        mock_session = MagicMock()
        mock_sessionmaker.return_value = mock_session
        mock_result = MagicMock()
        mock_result.fetchall.return_value = [('London', 9000000), ('Manchester', 5000000)]
        mock_session.execute.return_value = mock_result

        with app.test_client() as client:
            response = client.get('/get_data')
            self.assertEqual(response.status_code, 200)
            self.assertEqual(len(response.json), 2)
            self.assertEqual(response.json[0]['city'], 'London')

    @patch('app.sessionmaker')
    @patch('app.connect_to_postgres')
    def test_get_data_failure(self, mock_connect, mock_sessionmaker):
        # Simulate a connection failure
        mock_connect.return_value = None

        with app.test_client() as client:
            response = client.get('/get_data')
            self.assertEqual(response.status_code, 500)
            self.assertEqual(response.json['error'], 'Failed to connect to the database')

if __name__ == '__main__':
    unittest.main()
