# Crowdfunding_ETL

**Overview**

The ETL mini project is a partner activity to practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After the transformation of the data, we need to create four CSV files and use those CSV file data to create an ERD and a table schema. Finally, we will upload the CSV file data into a Postgres database

Team Members: Payal Bansal and Kayla Jehnzen

**Instructions**

The instructions for this mini project are divided into the following subsections:

1. Create the Category and Subcategory DataFrames

2. Create the Campaign DataFrame

3. Create the Contacts DataFrame

4. Create the Crowdfunding Database

**Create the Category and Subcategory DataFrames**

1. Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:

	i. A "category_id" column that has entries going sequentially from "cat1" to "catn", 	where n is the number of unique categories

	ii. A "category" column that contains only the category titles

	iii. The following image shows this category DataFrame:

![image](https://github.com/pbansal181/Crowdfunding_ETL/assets/148804724/646c8eaf-b71b-4213-9162-442060fda9c9)


2. Export the category DataFrame as category.csv and save it to your GitHub repository.

3. Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:

	i. A "subcategory_id" column that has entries going sequentially from "subcat1" to 	"subcatn", where n is the number of unique subcategories

	ii. A "subcategory" column that contains only the subcategory titles

	iii. The following image shows this subcategory DataFrame:

![image](https://github.com/pbansal181/Crowdfunding_ETL/assets/148804724/73774ff7-637d-4d74-a2d5-b5cfd12725af)


4. Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.

**Create the Campaign DataFrame**

1. Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

	i. The "cf_id" column

	ii. The "contact_id" column

	iii. The "company_name" column

	iv. The "blurb" column, renamed to "description"

	v. The "goal" column, converted to the float data type

	vi. The "pledged" column, converted to the float data type

	vii. The "outcome" column

	viii. The "backers_count" column

	ix. The "country" column

	x. The "currency" column

	xi. The "launched_at" column, renamed to "launch_date" and with the UTC times 	converted to the datetime format

	xii. The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format

	xiii. The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame

	xiv. The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
	
	xv. The following image shows this campaign DataFrame:

![image](https://github.com/pbansal181/Crowdfunding_ETL/assets/148804724/5c11e4cb-5e79-424b-b7db-054f599dd4b0)


2. Export the campaign DataFrame as campaign.csv and save it

**Create the Contacts DataFrame**

1. Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:

	Option 1: Use Python dictionary methods.(Choosen this option)

	Option 2: Use regular expressions.

2. If you chose Option 1, complete the following steps:

	i. Import the contacts.xlsx file into a DataFrame.

	ii. Iterate through the DataFrame, converting each row to a dictionary.

	iii. Iterate through each dictionary, doing the following:

		a. Extract the dictionary values from the keys by using a Python list comprehension.

		b. Add the values for each row to a new list.

	iv. Create a new DataFrame that contains the extracted data.

	v. Split each "name" column value into a first and last name, and place each in a new column.

	vi. Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

3. If you chose Option 2, complete the following steps:

	i. Import the contacts.xlsx file into a DataFrame.

	ii. Extract the "contact_id", "name", and "email" columns by using regular expressions.

	iii. Create a new DataFrame with the extracted data.

	iv. Convert the "contact_id" column to the integer type.

	v. Split each "name" column value into a first and a last name, and place each in a new column.

	vi. Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.

4. Check that your final DataFrame resembles the one in the following image:

![image](https://github.com/pbansal181/Crowdfunding_ETL/assets/148804724/918a6514-4400-42e2-b225-9f2bd7810195)


**Create the Crowdfunding Database**

1. Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site..

2. Use the information from the ERD to create a table schema for each CSV file.

**Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.

3. Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.

4. Create a new Postgres database, named crowdfunding_db.

5. Using the database schema, create the tables in the correct order to handle the foreign keys.

6. Verify the table creation by running a SELECT statement for each table.

7. Import each CSV file into its corresponding SQL table.

8. Verify that each table has the correct data by running a SELECT statement for each.
