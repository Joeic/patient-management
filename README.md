Patient Management Microservices Platform
A high-performance, event-driven microservices ecosystem built with Spring Boot 3 and Java 21. This project demonstrates advanced backend engineering, implementing Infrastructure as Code (IaC) via AWS CDK and localized cloud simulation through LocalStack.

🏗 System Architecture
The platform is designed with a decentralized architecture, ensuring scalability and fault tolerance. Services communicate asynchronously via Apache Kafka to maintain eventual consistency.

API Gateway: Central entry point using Spring Cloud Gateway for request routing, and path filtering.

Auth Service: Secure identity management using JWT and BCrypt password encoding.

Patient Service: Manages core patient records with PostgreSQL and Spring Data JPA.

Analytics Service: Consumes Kafka events to generate real-time metrics and health trends.

Infrastructure (CDK): Automates the provisioning of a custom VPC, Application Load Balancers (ALB), and MSK (Kafka) clusters.
