```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might encounter an issue if the `salary` column has a data type that doesn't allow for direct comparison with a numeric value. For example, if `salary` is stored as a string or text type, the comparison `salary > 100000` might lead to unexpected results or errors.  String comparison is lexicographical; '200000' is considered less than '10000', because '1' comes before '2' in lexicographical order.

Another potential issue is if the `department` column contains inconsistent capitalization (e.g., 'sales', 'Sales', 'SALES'). This can cause the query to miss matching rows unless a case-insensitive comparison is explicitly used.