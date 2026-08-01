import os
import pandas as pd
from sqlalchemy import create_engine

# ==========================================
# MySQL Connection
# ==========================================

username = "root"
password = "password"
host = "localhost"
database = "customer_purchasing_db"

engine = create_engine(
    f"mysql+pymysql://{username}:{password}@{host}/{database}"
)

# ==========================================
# Read Processed CSV
# ==========================================

# Current script folder
current_dir = os.path.dirname(os.path.abspath(__file__))

# Project root
project_root = os.path.dirname(current_dir)

# Processed CSV Path
csv_path = os.path.join(
    project_root,
    "data",
    "customer_shopping_behavior_processed.csv"
)

# Read CSV
df = pd.read_csv(csv_path)

print("=" * 50)
print("CSV Loaded Successfully")
print(f"Rows    : {df.shape[0]}")
print(f"Columns : {df.shape[1]}")
print("=" * 50)

# ==========================================
# Upload Data to MySQL
# ==========================================

df.to_sql(
    name="customer_purchases",
    con=engine,
    if_exists="replace",
    index=False
)

print("✅ Data Uploaded Successfully!")
print("Table Name : customer_purchases")
print("=" * 50)