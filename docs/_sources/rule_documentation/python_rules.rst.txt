=========================
Python Rules
=========================

Python-specific coding standards and best practices for development.

File: `python-rules.mdc`

Purpose
-------

The Python Rules provide language-specific guidelines to ensure consistent, high-quality Python code throughout the project. These rules establish coding standards, documentation requirements, and design patterns that are specific to Python development.

Key Principles
--------------

* **PEP 8 Compliance**: Following standard Python style guidelines
* **Proper Documentation**: Using Google-style docstrings for all code
* **Type Hints**: Leveraging Python's type annotation system
* **Error Handling**: Standardized approaches to exception management
* **Package Structure**: Consistent organization of Python modules

Detailed Contents
-----------------

Code Style
~~~~~~~~~~~~~~~

The Python rules establish coding style requirements:

* 4 spaces for indentation (no tabs)
* 88 character line length (Black formatter compatible)
* snake_case for functions, methods, and variables
* PascalCase for class names
* UPPERCASE for constants
* Docstrings for all public functions, classes, and methods

Import Organization
~~~~~~~~~~~~~~~~~~~~~~~~

Guidelines for organizing imports:

* Standard library imports first
* Third-party imports second
* Local application imports third
* Blank lines between import groups
* Absolute imports preferred over relative imports
* Specific imports (from x import y) when only a few items are needed

Documentation Standards
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Requirements for code documentation:

* Google-style docstrings for all functions, classes, and methods
* Type hints for function parameters and return values
* Examples for complex functions
* Clear descriptions of parameters and return values
* Documentation of exceptions raised
* Module-level docstrings explaining purpose and contents

Error Handling
~~~~~~~~~~~~~~~~~~~

Standardized approaches for error handling:

* Using specific exception types (no bare except:)
* Creating custom exception classes for domain-specific errors
* Logging exceptions with context information
* Using context managers for resource cleanup

Class Structure
~~~~~~~~~~~~~~~~~~~~

Guidelines for organizing Python classes:

* Specific order for class methods (class methods, static methods, init, etc.)
* Proper use of dunder methods
* Preference for composition over inheritance
* Use of abstract base classes for shared interfaces
* Property usage for attribute access control

Testing
~~~~~~~~~~~~

Requirements for Python testing:

* Unit tests for all public functions and methods
* pytest as the testing framework
* Test organization mirroring package structure
* Use of fixtures for test setup
* Mocking external dependencies
* High test coverage targets

Asynchronous Code
~~~~~~~~~~~~~~~~~~~~~~

Guidelines for async programming:

* Preference for async/await over callbacks
* asyncio usage for asynchronous operations
* Task management best practices
* Proper exception handling in async code

Project-Specific Conventions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Project-specific Python patterns:

* Naming conventions for different component types
* Dependency injection patterns
* Configuration management
* Database access patterns
* Logging implementation

Rationale
---------

The Python rules serve several essential purposes:

1. **Consistency**: Ensuring a consistent coding style and approach
2. **Quality**: Establishing high standards for Python code
3. **Maintainability**: Making code easier to understand and modify
4. **Efficiency**: Promoting patterns that work well with Python's strengths
5. **Compatibility**: Ensuring code works across different Python environments

By following these Python-specific rules, developers can write code that leverages Python's strengths while avoiding common pitfalls of the language.
