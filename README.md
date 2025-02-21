# SQL Query Error: Data Type Mismatch and Case Sensitivity

This repository demonstrates a common SQL query error caused by data type mismatches and case sensitivity issues. The query is intended to select employees from the 'Sales' department with a salary greater than 100000. However, it may produce incorrect results or errors due to how the data is stored.

## Bug Description

The `bug.sql` file contains the problematic SQL query. This query might fail or return inaccurate results if:

* The `salary` column is not a numeric data type (e.g., it's stored as a string or text).  String comparison in SQL is lexicographical, leading to incorrect results.
* The `department` column contains inconsistencies in capitalization (e.g., 'sales', 'Sales', 'SALES').

## Solution

The `bugSolution.sql` file provides a corrected query that addresses these issues. It uses explicit type casting for the `salary` comparison and a case-insensitive comparison for the `department` column (if supported by your SQL dialect).