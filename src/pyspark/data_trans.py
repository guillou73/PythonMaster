import pandas as pd
import numpy as np
from pyspark.sql import SparkSession
from pyspark.sql.functions import col, when, lit, avg

# Initialize SparkSession
spark = SparkSession.builder \
    .appName("PySpark Transformations") \
    .master("local[*]") \
    .getOrCreate()

salesDataCSVPath = "D:/Workspace/PythonMaster/src/pyspark/sample_data.csv"
data = spark.read.csv(salesDataCSVPath, header=True, inferSchema=True)
# Show the original data
print("Original Data:")
data.show()