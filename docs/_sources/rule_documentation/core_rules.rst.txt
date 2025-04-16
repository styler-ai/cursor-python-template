=========================
Core Rules
=========================

The Core Rules establish fundamental development principles applicable to all projects, regardless of technology stack.

File: `core-rules.mdc`

Purpose
-------

The core rules provide a set of foundational principles and patterns that guide overall code quality, architecture, and development practices. These rules establish a common baseline for all development work.

Key Principles
--------------

* **Clean Code**: Emphasizes readability, maintainability, and simplicity
* **SOLID Principles**: Guidelines for creating maintainable object-oriented designs
* **Design Patterns**: Implementation guidance for common design patterns
* **Error Handling**: Standardized approaches to handling errors
* **Logging**: Comprehensive logging practices and patterns

Detailed Contents
-----------------

General Code Principles
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The core rules establish universal coding principles including:

* KISS (Keep It Simple, Stupid) - favoring simplicity over complexity
* DRY (Don't Repeat Yourself) - avoiding code duplication
* Clear naming conventions for variables, functions, and classes
* Code documentation standards
* Function/method size and focus guidelines

Design Patterns
~~~~~~~~~~~~~~~~~~~~

Documentation and guidance for implementing Gang of Four design patterns:

* **Creational Patterns**: Factory Method, Abstract Factory, Builder, Prototype, Singleton
* **Structural Patterns**: Adapter, Bridge, Composite, Decorator, Facade, Flyweight, Proxy
* **Behavioral Patterns**: Chain of Responsibility, Command, Interpreter, Iterator, Mediator, Memento, Observer, State, Strategy, Template Method, Visitor

The rules include guidelines on when to use specific patterns and documentation requirements.

Error Handling
~~~~~~~~~~~~~~~~~~~

Standardized approaches for error handling:

* Using structured exception handling
* Exception logging requirements
* Retry mechanisms for transient errors
* Custom exception types for domain-specific errors

Logging Standards
~~~~~~~~~~~~~~~~~~~~~~

Comprehensive logging practices including:

* Log levels and their appropriate usage
* Structured logging formats
* Context inclusion in log messages
* Exception logging patterns
* Performance logging patterns
* State transition logging
* Resource usage logging

Architecture Guidelines
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

High-level architectural principles including:

* Modular architecture with clear component boundaries
* Separation of concerns
* Dependency injection
* Interface-based design
* MVC architecture principles and implementation patterns

Asynchronous Operations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Guidelines for implementing asynchronous operations:

* Using async/await patterns
* Thread management and safety
* Status updates for long-running operations
* Exception handling in asynchronous code
* Cancellation mechanisms

Version Control Practices
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Best practices for version control:

* Commit message formats and content
* Branching strategies
* Pull request guidelines
* Code review practices

Rationale
---------

The core rules serve several essential purposes:

1. **Quality Assurance**: Establishing a baseline for code quality and architecture
2. **Consistency**: Ensuring a consistent approach across different parts of the project
3. **Maintainability**: Making code easier to maintain over time
4. **Knowledge Sharing**: Documenting best practices for team members
5. **AI Assistance**: Providing clear guidance to the Cursor AI for generating high-quality code

By following these core rules, developers (both human and AI) can create code that is consistent, maintainable, and follows established best practices in software development.
