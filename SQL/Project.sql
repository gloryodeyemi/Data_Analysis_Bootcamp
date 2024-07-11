-- Data Cleaning

SELECT *
FROM layoffs;

-- 1. Remove duplicates
-- 2. Standardize the data
-- 3. Null or blank values
-- 4. Remove unnecessary columns or rows

CREATE TABLE layoffs_staging
LIKE layoffs; -- copy layoff table

SELECT *
FROM layoffs_staging;

INSERT layoffs_staging
SELECT *
FROM layoffs;

