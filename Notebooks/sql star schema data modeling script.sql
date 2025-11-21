-- =====================================================
-- SQL NOTEBOOK : STAR SCHEMA DATA MODELING
-- MATCHED 100% TO YOUR FILE STRUCTURE
-- FILE: ManufacturingDowntime v3.1.xlsx
-- =====================================================

-- FACT TABLE
-- =============================
CREATE TABLE Fact_Line_Downtime (
    DowntimeID INT PRIMARY KEY,
    DateKey INT,
    ProductKey INT,
    LineKey INT,
    OperatorKey INT,
    DowntimeFactorKey INT,
    Batch VARCHAR(50),
    DowntimeMinutes INT,
    MaintenanceCost DECIMAL(10,2),
    UnitsLost INT
);


-- =============================
-- DIMENSION TABLES
-- =============================

-- 1. DIM DATE
CREATE TABLE Dim_Date (
    DateKey INT PRIMARY KEY,
    Date DATE,
    Day INT,
    Month INT,
    MonthName VARCHAR(20),
    Quarter INT,
    Year INT,
    DayOfWeek VARCHAR(20),
    IsWeekend BIT
);


-- 2. DIM PRODUCT
CREATE TABLE Dim_Product (
    ProductKey INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Flavor VARCHAR(100),
    Size_Liters FLOAT, -- standardized to Liters
    Difficulty VARCHAR(50),
    ProfitabilityCategory VARCHAR(50)
);

INSERT INTO Dim_Product
SELECT 
    ProductKey,
    ProductName,
    Flavor,
    CASE 
        WHEN Size LIKE '%ml%' THEN CAST(REPLACE(Size,'ml','') AS FLOAT) / 1000
        WHEN Size LIKE '%L%' THEN CAST(REPLACE(Size,'L','') AS FLOAT)
        ELSE NULL
    END AS Size_Liters,
    Difficulty,
    ProfitabilityCategory
FROM Staging_Dim_Product;


-- 3. DIM LINE
CREATE TABLE Dim_Line (
    LineKey INT PRIMARY KEY,
    LineName VARCHAR(100),
    Department VARCHAR(100)
);


-- 4. DIM OPERATOR
CREATE TABLE Dim_Operator (
    OperatorKey INT PRIMARY KEY,
    OperatorName VARCHAR(255),
    ExperienceLevel VARCHAR(50)
);


-- 5. DIM DOWNTIME FACTOR
CREATE TABLE Dim_Downtime_Factor (
    DowntimeFactorKey INT PRIMARY KEY,
    FactorCode VARCHAR(50),
    Description VARCHAR(255),
    OperatorError BIT,
    Severity VARCHAR(50),
    Preventable BIT
);


-- =============================
-- FOREIGN KEY RELATIONSHIPS
-- =============================
ALTER TABLE Fact_Line_Downtime
ADD CONSTRAINT FK_Date FOREIGN KEY (DateKey) REFERENCES Dim_Date(DateKey);

ALTER TABLE Fact_Line_Downtime
ADD CONSTRAINT FK_Product FOREIGN KEY (ProductKey) REFERENCES Dim_Product(ProductKey);

ALTER TABLE Fact_Line_Downtime
ADD CONSTRAINT FK_Line FOREIGN KEY (LineKey) REFERENCES Dim_Line(LineKey);

ALTER TABLE Fact_Line_Downtime
ADD CONSTRAINT FK_Operator FOREIGN KEY (OperatorKey) REFERENCES Dim_Operator(OperatorKey);

ALTER TABLE Fact_Line_Downtime
ADD CONSTRAINT FK_DowntimeFactor FOREIGN KEY (DowntimeFactorKey) REFERENCES Dim_Downtime_Factor(DowntimeFactorKey);


-- =============================
-- STAR SCHEMA STRUCTURE
-- =============================
--
--               Dim_Date
--                   |
-- Dim_Product -- Fact_Line_Downtime -- Dim_Line
--                   |
--        Dim_Operator --- Dim_Downtime_Factor
--
-- Fully Optimized for BI & Power BI Reporting


-- =============================
-- INDEXING FOR PERFORMANCE
-- =============================
CREATE INDEX idx_fact_date ON Fact_Line_Downtime(DateKey);
CREATE INDEX idx_fact_product ON Fact_Line_Downtime(ProductKey);
CREATE INDEX idx_fact_line ON Fact_Line_Downtime(LineKey);
CREATE INDEX idx_fact_operator ON Fact_Line_Downtime(OperatorKey);
CREATE INDEX idx_fact_factor ON Fact_Line_Downtime(DowntimeFactorKey);

-- ✅ STAR SCHEMA ALIGNED WITH YOUR EXCEL DATA MODEL