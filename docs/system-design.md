# Distributed E-Commerce Order & Inventory System

## 1. Project Overview

This project is a full-stack e-commerce application designed to manage products, customers, orders, inventory and payment workflows.

The system aims to provide reliable order processing, inventory management and a foundation for exploring distributed-system concepts.

## 2. System Components

### 2.1 Frontend
The frontend provides the user interface through which customers can:
- View products.
- Add products to a shopping cart.
- Place orders.
- View order status.

### 2.2 Backend
The backend processes customer requests and contains the application's business logic.

It will:
- Process orders.
- Manage products.
- Validate stock.
- Manage order status.
- Handle payment simulation.

### 2.3 Product Management
Responsible for:
- Product details.
- Product prices.
- Product availability.

### 2.4 Order Management
Responsible for:
- Creating orders.
- Tracking orders.
- Managing order items.
- Maintaining order status.

### 2.5 Inventory Management
Responsible for:
- Tracking stock.
- Checking stock availability.
- Updating stock after orders.
- Preventing invalid stock deductions.

### 2.6 Payment Simulation
Responsible for simulating the payment process without connecting to an actual payment gateway.

## 3. Initial Architecture

The initial version will use a modular backend application.

The modules will be logically separated so that their responsibilities are clear.

The system will initially avoid unnecessary complexity while providing a foundation for exploring distributed-system concepts later.

## 4. Order Processing Workflow

1. The customer selects a product.
2. The customer specifies the quantity.
3. The customer submits an order.
4. The backend receives the request.
5. The backend checks stock availability.
6. The system validates the requested quantity.
7. The inventory is updated if the operation succeeds.
8. An order is created.
9. Payment is simulated.
10. The order status is updated.
11. The customer receives the order response.

## 5. Example

Initial inventory:

| Product | Stock |
|---|---:|
| Laptop | 5 |

Customer orders:

| Product | Quantity |
|---|---:|
| Laptop | 2 |

Expected inventory after successful order:

| Product | Stock |
|---|---:|
| Laptop | 3 |

If the customer requests more stock than is available, the order should not proceed.

## 6. Technology Stack

- Java
- Spring Boot
- PostgreSQL
- React
- Redis
- Git
- GitHub
- Docker

## 7. Future Engineering Challenges

The project will progressively explore:

- Database transactions.
- Concurrent order processing.
- Inventory consistency.
- REST APIs.
- Authentication and authorization.
- Automated testing.
- Caching.
- Containerization.
- Deployment.
- Distributed-system architecture.

## 8. Project Development Strategy

The application will initially be developed as a modular backend system.

Core functionality will be implemented and tested before introducing more complex distributed architecture.

The project will evolve through incremental development.