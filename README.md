# Sales Trend Analysis Using Aggregations

This repository analyzes monthly revenue and order volume from an online sales dataset using MySQL aggregate functions and time-based grouping.

## Dataset

- **File:** Online-Sales-Data.csv
- **Table:** orders
- **Key Columns:** order_id, order_date, amount, product_id

## Requirements

- MySQL Server
- MySQL Workbench, Terminal, or phpMyAdmin
- Online-Sales-Data.csv (located in this repo)

## Steps Performed

1. **Import Data**
    - The CSV file is imported into MySQL table `orders`.
2. **Analysis Query**
    - Grouped sales by year and month.
    - Aggregated revenue with `SUM(amount)` and order volume with `COUNT(DISTINCT order_id)`.
    - Sorted output by year and month.

    ```
    SELECT
        YEAR(order_date) AS year,
        MONTH(order_date) AS month,
        SUM(amount) AS monthly_revenue,
        COUNT(DISTINCT order_id) AS order_volume
    FROM
        orders
    GROUP BY
        year, month
    ORDER BY
        year, month;
    ```

3. **Optional Filtering**
    - Add a `WHERE` clause for specific periods (e.g., a certain year):

    ```
    WHERE YEAR(order_date) = 2024
    ```

    - Or specify a range:

    ```
    WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31'
    ```

## Output

- Table listing revenue and order volume per month, exportable as CSV if needed.

| year | month | monthly_revenue | order_volume |
|------|-------|----------------|--------------|
| 2024 | 1     |   10000.00     |    56        |
| 2024 | 2     |   12050.45     |    64        |
| ...  | ...   |    ...         |    ...       |

## How to Run

1. Import the dataset using MySQL.
2. Run the analysis query above in your SQL client.
3. Review and export results.

## References

- MySQL Documentation
- LearnSQL Group By Month/Year
