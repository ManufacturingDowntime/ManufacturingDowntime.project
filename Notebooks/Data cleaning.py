import pandas as pd
import re

# ==============================
# Load Data
# ==============================
file_path = "ManufacturingDowntime v3.1.xlsx"   # change if needed
df = pd.read_excel(file_path, sheet_name="dim_product")

# ==============================
# 1. Clean NULL / Empty Values
# ==============================

# Remove rows where ALL values are null
df = df.dropna(how='all')

# Fill NULL in text columns with 'Unknown'
text_cols = df.select_dtypes(include='object').columns
df[text_cols] = df[text_cols].fillna("Unknown")

# Fill NULL in numeric columns with 0
num_cols = df.select_dtypes(include=['int64','float64']).columns
df[num_cols] = df[num_cols].fillna(0)


# ==============================
# 2. Convert size column to Liters (L)
# ==============================

def convert_to_liters(value):
    if pd.isna(value):
        return None

    value = str(value).lower().strip()

    # Extract numeric value
    match = re.findall(r"[\d\.]+", value)
    if not match:
        return None

    number = float(match[0])

    if "ml" in value:
        return number / 1000        # milliliter → liter
    elif "cl" in value:
        return number / 100         # centiliter → liter
    elif "l" in value:
        return number               # already liters
    elif "gal" in value:
        return number * 3.785       # gallon → liter
    else:
        return number               # assume it's already liters


# Create new standardized column in Liters
df["size_L"] = df["size"].apply(convert_to_liters)


# ==============================
# Save Cleaned File
# ==============================
df.to_excel("dim_product_cleaned.xlsx", index=False)

print("✅ Cleaning completed & size converted to Liters successfully.")
