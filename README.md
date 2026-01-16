# Patient Management System

**Patient Management System** is a microservices-based healthcare backend platform designed to manage patient data, authentication, billing, and analytics in a scalable and modular way.  
The system follows modern backend engineering practices and is suitable for learning, experimentation, and production-oriented system design.

---

## ✨ Services

- **Microservices Architecture**  
  Independent services for authentication, patient management, billing, and analytics.

- **API Gateway**  
  Centralized entry point that routes requests to internal services.

- **Authentication & Authorization Service**  
  Secure user authentication with role-based access control.

- **Patient Management Service**  
  CRUD operations for patient profiles and related data.

- **Billing Service**  
  Handles billing records, invoices, and payment-related operations.

- **Analytics Service**  
  Provides system-level insights and operational metrics.

- **Integration Testing**  
  End-to-end tests to validate cross-service interactions.

---
## 🛠 Tech Stack

| Category | Technologies |
| :--- | :--- |
| **Backend Core** | Java 21, Spring Boot 3.5, Spring Cloud 2024+ |
| **Messaging** | Apache Kafka (AWS MSK simulation) |
| **Data & Storage** | PostgreSQL, Spring Data JPA, Hibernate |
| **Infrastructure** | AWS CDK (Java), LocalStack, Docker, Maven |
| **Security** | Spring Security, JWT, BCrypt |
| **Testing** | RestAssured, JUnit 5, Reactor Test |
