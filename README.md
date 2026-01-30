# 🏷️ Online Bidding System

The Online Bidding System is a web-based application that allows users to participate in auctions by placing bids on items in real time.  
The system is built using Spring Boot to expose RESTful APIs and uses MySQL for data persistence.

This project mainly focuses on backend development including API design, business logic implementation, and database integration.

---

## 📌 Features

- User Registration and Login  
- Create and Manage Auction Items  
- Place Bids on Active Auctions  
- Fetch Current Highest Bid  
- Track Auction Status (Active/Closed)  
- Automatically Determine Winning Bid  
- RESTful API Architecture  
- MySQL Database Integration  

---

## 🏗️ Architecture

- The application follows a layered architecture:
- Controller Layer → Handles HTTP Requests (REST APIs)
- Service Layer → Business Logic
- Repository Layer → Database Access (JPA/Hibernate)
- Database → MySQL


---

## 🛠️ Tech Stack

- Java  
- Spring Boot  
- Spring Data JPA (Hibernate)  
- MySQL   
- Postman (API Testing)  

---

## 📂 Project Structure
```
online-bidding-system
│
├── src/main/java
│ ├── controller
│ ├── service
│ ├── repository
│ ├── model
│ └── OnlineBiddingSystemApplication.java
│
├── src/main/resources
│ ├── application.properties
│
├── pom.xml
└── README.md
```


---

## 📦 Modules

### 👤 User Management
- Register users  
- Login authentication  
- Store user details  

### 📦 Auction Management
- Create auction items  
- View all auctions  
- Update auction status  

### 💰 Bidding System
- Place bids  
- Validate bid amounts  
- Retrieve highest bid  
- Determine auction winner  

---

## ⚙️ Setup Instructions

### Prerequisites

- Java 17 or above  
- MySQL  
- Maven  


