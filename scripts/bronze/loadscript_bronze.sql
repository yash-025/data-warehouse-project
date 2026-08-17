-- 1. Load CRM Customer Info
TRUNCATE TABLE bronze.crm_cust_info;

LOAD DATA INFILE '/home/yash/Desktop/data-warehouse-project/datasets/source_crm/cust_info.csv'
INTO TABLE bronze.crm_cust_info
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- 2. Load CRM Product Info
TRUNCATE TABLE bronze.crm_prd_info;

LOAD DATA INFILE '/home/yash/Desktop/data-warehouse-project/datasets/source_crm/prd_info.csv'
INTO TABLE bronze.crm_prd_info
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- 3. Load CRM Sales Details
TRUNCATE TABLE bronze.crm_sales_details;

LOAD DATA INFILE '/home/yash/Desktop/data-warehouse-project/datasets/sales_details.csv'
INTO TABLE bronze.crm_sales_details
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- 4. Load ERP Location Data
TRUNCATE TABLE bronze.erp_loc_a101;

LOAD DATA LOCAL INFILE '/home/yash/Desktop/data-warehouse-project/datasets/source_erp/LOC_A101.csv'
INTO TABLE bronze.erp_loc_a101
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- 5. Load ERP Customer Data
TRUNCATE TABLE bronze.erp_cust_az12;

LOAD DATA LOCAL INFILE '/home/yash/Desktop/data-warehouse-project/datasets/source_erp/CUST_AZ12.csv'
INTO TABLE bronze.erp_cust_az12
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- 6. Load ERP Product Category Data
TRUNCATE TABLE bronze.erp_px_cat_g1v2;

LOAD DATA LOCAL INFILE '/home/yash/Desktop/data-warehouse-project/datasets/source_erp/PX_CAT_G1V2.csv'
INTO TABLE bronze.erp_px_cat_g1v2
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
