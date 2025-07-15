# 🍔 BOM HAMBURGUER - Order Management App

A mobile application developed with Flutter (Android/iOS) to simplify the customer ordering process at **BOM HAMBURGUER**, allowing users to place customized sandwich orders, apply discounts based on combinations, and manage their cart and orders with ease.
<img width="990" height="440" alt="Image" src="https://github.com/user-attachments/assets/1937958e-4ec8-4535-8a97-8421c5e8b753" />
## 📱 Features
### 1. List Products
- View all available **sandwiches** and **extras**.
- Products:
  - Sandwiches:
    - `X Burger – $5.00`
    - `X Egg – $4.50`
    - `X Bacon – $7.00`
  - Extras:
    - `Fries – $2.00`
    - `Soft Drink – $2.50`

### 2. Add to Cart
- Users can select **only one** of each item type per order.
- App validates cart content and prevents duplicate items (e.g., two sandwiches).

### 3. View Cart
- Displays all selected items.
- Automatically calculates applicable discounts.
- Shows final price based on business rules.

### 4. Pay and Place Order
- Fake payment feature (no real transactions).
- Requires only the **customer’s name**.
- Upon successful payment, an **order is created** and saved.

---

## 💸 Discount Rules

| Selection Combination             | Discount |
|----------------------------------|----------|
| Sandwich + Fries + Soft Drink    | 20%      |
| Sandwich + Soft Drink            | 15%      |
| Sandwich + Fries                 | 10%      |
| Any other combination            | No discount |

> ⚠️ Each order **must not contain duplicate items** (e.g., 2 soft drinks). Violations will trigger error messages.

---

## 📂 Project Structure
lib/
├── config/
│ └── database/ 
├── domain/
│ ├── model/ 
│ ├── repository/ 
│ ├── service/ 
│ └── table/
├── enum/
├── models/
├── ui/
│ ├── view/
│ └── viewModel/
└── utils/
