# 32239_2025_Prince_ShoeRepair_DB
The Shoe Repair Management System is an Oracle database application that manages customers, shoes, repair orders, employees, and payments. It replaces manual record-keeping with a secure digital system, improves repair tracking, reduces errors, ensures data integrity, and generates reports for efficient business management.
# Shoe Repair Management System

Oracle database capstone project for **DPR400210 – Database Programming with Oracle Database**, University of Lay Adventists of Kigali (2025–2026).

**Database name:** `32239_2025_ShoeRepair_DB`
**Author:** Student ID 32239
**Instructor:** Eric Maniraguha

## About

Many shoe repair shops still track customers and orders on paper, which gets lost or is slow to search. This project replaces that with an Oracle database that stores customers, employees, services, materials, repair orders, and payments, and enforces shop rules automatically with PL/SQL.

## Problem It Solves

- No more lost paper records
- Fast lookup of any customer's repair order
- Clear tracking of order status, from drop-off to pick-up
- An automatic audit trail of every change made to an order
- A rule that blocks changes on weekdays and public holidays

## Tables

| # | Table | Purpose |
|---|-------|---------|
| 1 | `CUSTOMER` | People who bring shoes for repair |
| 2 | `EMPLOYEE` | Staff who work at the shop |
| 3 | `SERVICES` | Repair services offered (e.g. sole replacement) |
| 4 | `SERVICE_MATERIAL` | Materials used in repairs, with stock levels |
| 5 | `PUBLIC_HOLIDAY` | Holiday dates used by the business rule |
| 6 | `REPAIR_ORDER` | One record per shoe brought in for repair |
| 7 | `ORDER_SERVICE` | Services used on each order (many-to-many) |
| 8 | `ORDER_MATERIAL` | Materials used on each order (many-to-many) |
| 9 | `PAYMENTS` | Payments made against an order |
| 10 | `AUDIT_LOG` | Record of who changed what, and when |

## Features

- **ERD & 3NF design** – all 10 tables normalized, linked with primary and foreign keys
- **PL/SQL** – procedures, functions, a package, and a cursor for common shop tasks
- **Triggers** – a stock-check trigger, a compound trigger for auditing, and a business-rule trigger
- **Business rule** – blocks INSERT, UPDATE, and DELETE on weekdays (Mon–Fri) and public holidays
- **Audit system** – every change to `REPAIR_ORDER` is logged automatically
- **Innovation** – dashboard for order status and daily income (Oracle APEX / Power BI)

## Repository Structure

```
32239_2025_ShoeRepair_DB/
├── README.md
├── docs/
│   ├── Shoe_Repair_Final_Report.docx      # Full written report
│   ├── Shoe_Repair_Management_System.pptx # Presentation slides
│   └── screenshots/                       # Query & dashboard screenshots
├── sql/
│   ├── 01_create_user.sql                 # Database user & privileges
│   ├── 02_create_tables.sql               # All 10 tables with constraints
│   └── 03_sample_data.sql                 # Sample data for testing
└── plsql/
    ├── 01_procedures_functions.sql
    ├── 02_package_repair_shop.sql
    ├── 03_triggers.sql                    # Stock check, audit, business rule
    └── 04_cursor_reports.sql
```

## Getting Started

1. Run `sql/01_create_user.sql` as a DBA user to create the database user.
2. Connect as `32239_2025_SHOEREPAIR_DB` and run `sql/02_create_tables.sql`.
3. Load test data with `sql/03_sample_data.sql`.
4. Run the scripts in `plsql/` to add the procedures, functions, package, and triggers.
5. Test the business rule by running an INSERT on a weekday — it should be blocked.

## Documentation

See `docs/Shoe_Repair_Final_Report.docx` for the full write-up: problem statement, ERD, normalization, and all SQL/PL-SQL code with explanations.

## License

Academic project — for course evaluation only.


