# SOLID Principles 
Are a set of five design guidelines that help developers write clean, maintainable, and scalable object-oriented code


By following SOLID principles, developers can reduce code complexity, improve flexibility, and make their applications more robust against changes. Each principle focuses on a specific aspect of software design, encouraging better separation of concerns and stronger architecture.

The five principles are:

S — Single Responsibility Principle (SRP)

O — Open/Closed Principle (OCP)

L — Liskov Substitution Principle (LSP)

I — Interface Segregation Principle (ISP)

D — Dependency Inversion Principle (DIP)

# The Single Responsibility Principle (SRP) 

States that a class, module, or function should have only one reason to change, meaning it should handle a single responsibility.

By keeping responsibilities focused, SRP makes code easier to understand, maintain, and extend, while reducing bugs and unintended side effects.

In practice:

Do one thing and do it well
Separate concerns (e.g., business logic, data, UI)
Break large classes into smaller ones

This leads to cleaner, more testable, and reusable code.

<p align="center"> <img src="drawables/mermaid-diagram.png" width="40%" /> </p>

--------------------------------------------------
# The Open/Closed Principle (OCP) 

States that software entities should be open for extension but closed for modification.

This means you should be able to add new functionality without changing existing code, reducing the risk of breaking what already works. It’s typically achieved through abstraction, such as interfaces or inheritance.

Applying OCP makes your code more flexible, scalable, and easier to maintain.

<p align="center"> <img src="drawables/ocp.png" width="40%" /> </p>

--------------------------------------------------

# Liskov Substitution Principle (LSP)

The Liskov Substitution Principle, introduced by Barbara Liskov, states that objects of a subclass should be replaceable with objects of their superclass without affecting the correctness of the program.

In other words, a subclass must honor the behavior and expectations of its parent class. It should not alter expected functionality, throw unexpected errors, or require stricter conditions.

Adhering to LSP helps ensure reliable inheritance, improves code maintainability, and prevents subtle bugs caused by improper subclass behavior.

<p align="center"> <img src="drawables/LSP.png" width="40%" /> </p>

-------------------------------------------------------

# Interface Segregation Principle (ISP)

Clients should not be forced to depend on methods they do not use.

Description:
The Interface Segregation Principle states that instead of creating large, general-purpose interfaces, it’s better to split them into smaller, more specific ones. This ensures that classes only implement the methods they actually need, reducing unnecessary dependencies and improving maintainability.

<p align="center"> <img src="drawables/DIP.png" width="40%" /> </p>

--------------------------------------------------------
# Dependency Inversion Principle (DIP)

The Dependency Inversion Principle states that high-level modules should not depend on low-level modules directly. Instead, both should depend on abstractions such as interfaces or abstract classes. This reduces coupling, improves flexibility, and makes the code easier to test, maintain, and extend.

<p align="center"> <img src="drawables/ISP.png" width="40%" /> </p>
