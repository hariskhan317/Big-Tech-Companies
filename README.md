# Big Tech Companies Data
## Overview
The Big Tech Companies Data Cleaning Project is a data preprocessing effort aimed at cleaning and organizing data from multiple big tech companies. The project involves using SQL for data cleaning and manipulation. The raw data contained information about employees, dates, and locations for each company, but it was initially messy and required significant cleaning to make it usable for analysis.

## Data Cleaning Steps
The data cleaning process in this project involved several key steps to ensure the data's accuracy, consistency, and better understanding:

* Cleaning the Employer Column: The first step was to address discrepancies and errors in the Employer column across all datasets for different companies. This process involved standardizing employer names, correcting spelling mistakes, and removing duplicate entries to achieve uniformity in the data.

* Fixing Date Columns: The date columns in the raw data were in different formats, making analysis difficult. Therefore, the date types were standardized by converting them into a consistent format (e.g., YYYY-MM-DD). Additionally, any invalid dates or missing values were handled appropriately during this step.

* Splitting Location Column: To enhance the data's clarity, the Location column was split into two separate columns: State and City. This division allows for a more straightforward analysis based on geographical attributes.

* Removing Unwanted Columns: During the data cleaning process, it was necessary to identify and eliminate irrelevant or redundant columns. By removing unwanted columns from all the datasets, the final data becomes more concise and focused on the essential information.

* Additional Adjustment for Amazon Dataset: For the Amazon dataset specifically, an extra column was created to provide more detailed information about the Employer. The original Employer column was split into two separate columns: Employer and Sector/Department. This additional step allows for a deeper understanding of the different sectors or departments within Amazon.

## Data Storage
Once the data cleaning process was completed for each company's dataset, the cleaned datasets were saved in Excel files. The data for each company was organized into separate sheets within the Excel file, with each sheet labeled according to the respective company name. This systematic storage ensures that the data for each company is easily accessible and maintainable.

## Repository Contents
The GitHub repository for the Big Tech Companies Data Cleaning Project contains the following files and directories:

* SQL Scripts: This directory contains the SQL scripts used for data cleaning and manipulation. The scripts are organized according to the data cleaning steps they perform.

* Cleaned Data: This directory contains the cleaned Excel files for each company. Each file contains a sheet for the respective company, with the data properly cleaned and organized.

* README.md: The README file you are currently reading, provides an overview of the project, the data cleaning steps, and information about the repository contents.

## Conclusion
The Big Tech Companies Data Cleaning Project has successfully cleaned and organized the raw data from multiple big tech companies, making it suitable for further analysis and exploration. By using SQL and following a structured approach, the data cleaning process achieved a consistent and accurate dataset for each company. The cleaned data files stored in the repository can serve as valuable resources for future data-driven tasks and analyses related to big tech companies and their workforce.
