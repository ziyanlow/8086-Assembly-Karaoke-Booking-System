# 🎤 8086 Assembly Karaoke Booking System

![Assembly](https://img.shields.io/badge/Language-8086%20Assembly-blue)
![Platform](https://img.shields.io/badge/Platform-DOSBox-green)
![Architecture](https://img.shields.io/badge/Architecture-16--bit%208086-orange)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

A **console-based Karaoke Reservation and Booking System** developed entirely in **16-bit 8086 Assembly Language**. This project simulates a karaoke reservation system by providing user authentication, member management, room type management, booking processing, payment calculation with SST, receipt generation, and system summary through a DOS-based command-line interface.

---

## 📚 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [System Modules](#-system-modules)
- [Technical Implementation](#-technical-implementation)
- [Payment Formula](#-payment-formula)
- [Program Workflow](#-program-workflow)
- [Prerequisites](#-prerequisites)
- [How to Run](#-how-to-run)
- [Assumptions](#-assumptions)
- [Learning Outcomes](#-learning-outcomes)

---

# 📖 Overview

The Karaoke Booking System is a text-based application built using **8086 Assembly Language** for the DOS environment.

The system allows users to:

- Securely log into the system
- Manage member records
- Configure karaoke room types
- Create karaoke bookings
- Automatically calculate payment and SST
- Display booking and payment summaries
- View system statistics

This project demonstrates how a complete management system can be implemented using low-level programming concepts including procedures, loops, arrays, conditional branching, arithmetic operations, and DOS interrupts.

---

# ✨ Features

- 🔐 User Login Authentication
- 👤 Member Management
- 🎵 Room Type Management
- 📝 Booking Management
- 🧾 Order Summary
- 💳 Payment Summary
- 📊 System Summary
- ❌ Input Validation
- 🧮 Automatic SST Calculation
- 📋 Receipt Generation
- 🔄 Menu Navigation

---

# 📂 System Modules

## 🔐 Login Module

The login module authenticates users before allowing access to the system.

### Functions

- User login
- Password verification
- Invalid login counter
- Error handling
- Successful login confirmation

### Default Credentials

| Username | Password |
|----------|----------|
| csa | csa66 |

---

## 📋 Main Menu Module

After successful login, users can choose from:

1. Add Order
2. Member Management
3. Room Type Management
4. System Summary
5. Logout

The system validates every menu selection and displays an error message for invalid input.

---

## 📝 Add Order Module

This module handles the complete booking process.

### Functions

- Verify member
- Select room type
- Enter number of guests
- Confirm booking
- Generate order summary
- Generate payment summary

---

## 👤 Member Module

Manage karaoke members.

### Functions

- Add Member
- Show Member
- Return to Main Menu

### Example Member ID

```
M0001
```

---

## 🎵 Room Type Module

Manage available karaoke rooms.

### Functions

- Add Room Type
- Show Room Type
- Return to Main Menu

### Example Room Types

| Room Type | Description |
|-----------|-------------|
| Small | Suitable for small groups |
| Medium | Suitable for medium groups |
| Large | Suitable for large groups |

---

## 🧾 Order Summary Module

Displays:

- Member ID
- Member Name
- Room Type
- Room Price
- Guest Quantity
- Booking Details

---

## 💳 Payment Summary Module

Displays:

- Room Price
- Number of Guests
- Subtotal
- SST
- Total Payment

---

## 📊 System Summary Module

Displays the total number of:

- Members
- Room Types
- Orders

---

# ⚙️ Technical Implementation

This project demonstrates the following Assembly programming concepts:

- 16-bit Intel 8086 Assembly Language
- DOS Interrupt 21H
- Procedures (PROC)
- Arrays
- Variables
- String Processing
- User Input Validation
- Arithmetic Instructions
- Multiplication (MUL)
- Division (DIV)
- Conditional Branching
- Loops
- Menu-driven Programming

---

# 🧮 Payment Formula

### Subtotal

```
Subtotal = Room Price × Number of Guests
```

### SST

```
SST = Subtotal × 5%
```

### Total Payment

```
Total Payment = Subtotal + SST
```

---

# 🔄 Program Workflow

```
             Start
               │
               ▼
        Login Module
               │
      Login Successful?
         ┌─────┴─────┐
        No          Yes
        │            │
        ▼            ▼
 Login Module    Main Menu
                    │
      ┌─────────────┼─────────────┐
      ▼             ▼             ▼
 Member        Room Type     Add Order
      │             │             │
      └─────────────┴─────────────┘
                    │
                    ▼
             Order Summary
                    │
                    ▼
           Payment Summary
                    │
                    ▼
            Back to Main Menu
                    │
                    ▼
            System Summary
                    │          
                    ▼
                  Logout

```

---

# 💻 Prerequisites

Before running this project, install:

- DOSBox (Recommended)
- MASM or TASM Assembler
- Windows Operating System

---

# 🚀 How to Run

### Step 1

Mount your project directory.

```dos
mount c C:\AssemblyProject
```

### Step 2

Switch to the mounted drive.

```dos
C:
```

### Step 3

Run the executable.

```dos
karaoke.exe
```

---

# ⚠️ Assumptions

- Users must log in before accessing the system.
- Members should exist before creating a booking.
- Karaoke rooms are available for booking.
- SST is calculated separately for every receipt.
- Invalid inputs are rejected.
- Data is stored in memory during program execution.
- Information is not permanently saved after the program exits.

---

# 📚 Learning Outcomes

This project demonstrates:

- 8086 Assembly Programming
- DOS Interrupt Programming
- Console-Based Application Development
- Menu-Driven Programming
- Structured Programming
- Procedure Design
- Input Validation
- Arithmetic Computation
- Data Management
- Record Processing
- Problem Solving
- Modular Programming
---

# 🎯 Skills Demonstrated

- 16-bit Assembly Programming
- DOS Programming
- Low-Level Software Development
- Algorithm Design
- Modular Programming
- Record Management
- User Authentication
- Mathematical Computation
- Console UI Design
- Input Validation
