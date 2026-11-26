# Database Design — Distributed E-Commerce System

## 1. Users

Stores customer information.

| Column  | Description    |
| ------- | -------------- |
| user_id | Primary key    |
| name    | Customer name  |
| email   | Customer email |

## 2. Products

Stores product information.

| Column     | Description   |
| ---------- | ------------- |
| product_id | Primary key   |
| name       | Product name  |
| price      | Product price |

## 3. Inventory

Tracks product stock.

| Column         | Description       |
| -------------- | ----------------- |
| product_id     | Product reference |
| stock_quantity | Available stock   |

## 4. Orders

Stores customer orders.

| Column       | Description        |
| ------------ | ------------------ |
| order_id     | Primary key        |
| user_id      | Customer reference |
| total_amount | Total order amount |
| status       | Order status       |

## 5. Order Items

Stores products belonging to orders.

| Column        | Description                    |
| ------------- | ------------------------------ |
| order_item_id | Primary key                    |
| order_id      | Order reference                |
| product_id    | Product reference              |
| quantity      | Purchased quantity             |
| unit_price    | Product price at purchase time |

## 6. Payments

Stores payment information.

| Column     | Description     |
| ---------- | --------------- |
| payment_id | Primary key     |
| order_id   | Order reference |
| amount     | Payment amount  |
| status     | Payment status  |

## 7. Relationships

- One user can have many orders.
- One order can contain many order items.
- One product can appear in many order items.
- One product has one inventory record in the initial design.
- One order can have payment records.

## 8. Keys

Primary keys uniquely identify records.

Foreign keys connect related records and help maintain referential integrity.

## 9. Planned Database

PostgreSQL will be used as the relational database management system.
