import unittest
import math

def encrypt(message: str):
    return message

class TestCalc(unittest.TestCase):
    def setUp(self):
        self.my_message = "banana"
    # some test methods

    def test_message(self):
        self.assertIsNotNone(self.my_message)

    def test_inputType(self):
        self.assertIsInstance(self.my_message, str)

    def test_funReturnSomething(self):
        self.assertIsInstance(encrypt(self.my_message),str)
    
    def test_lenIO(self):
        self.assertEqual(len(self.my_message), len(self.my_message))

if __name__ == "__main__":
    unittest.main()