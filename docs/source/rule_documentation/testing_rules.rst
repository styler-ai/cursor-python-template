=========================
Testing Rules
=========================

Comprehensive standards for testing all aspects of the project.

File: `testing-rules.mdc`

Purpose
-------

The Testing Rules establish comprehensive requirements and best practices for testing across the project. These rules ensure adequate test coverage, consistent test organization, and proper validation of all code components.

Key Principles
--------------

* **Test Pyramid**: Following the test pyramid with many unit tests, fewer integration tests, and even fewer E2E tests
* **Tests First**: Writing tests before or alongside implementation
* **High Coverage**: Aiming for at least 80% code coverage
* **Test Independence**: Ensuring tests can run in isolation
* **Fast Execution**: Optimizing tests to run quickly
* **Automation**: Fully automating all testing

Detailed Contents
-----------------

Test Organization
~~~~~~~~~~~~~~~~~~~~~~

Guidelines for organizing tests:

* Tests stored in the dedicated `tests/` directory
* Mirror of the package structure in test directory
* Test files named with `test_*.py` or `*_test.py` pattern
* Grouping by functionality/component
* Separate directories for different test types (unit, integration, etc.)

Unit Testing
~~~~~~~~~~~~~~~~~

Requirements for unit testing:

* Unit tests for all functions, classes, and methods
* Creation during or before implementation
* Isolation of test targets
* Following the AAA pattern (Arrange, Act, Assert)
* Appropriate mocking of dependencies
* Testing of both happy path and error cases
* Fast execution time
* Avoidance of external dependencies
* Coverage of error handling and edge cases
* Use of pytest fixtures for setup and teardown

Smoke Testing
~~~~~~~~~~~~~~~~~~

Guidelines for smoke testing:

* Smoke tests for all core functionality
* Automatic execution for every code change
* Comprehensive but quick test suite
* Verification of critical user paths
* Testing of key API endpoints
* Testing of most common user workflows
* Simple and reliable test structure
* Early execution in the CI pipeline

Integration Testing
~~~~~~~~~~~~~~~~~~~~~~~~

Standards for integration testing:

* Testing of interactions between components
* Use of real dependencies where practical
* Test databases or services for testing
* Verification of typical user workflows
* System behavior testing
* Cleanup to prevent test pollution
* Database interaction testing
* API boundary testing

End-to-End Testing
~~~~~~~~~~~~~~~~~~~~~~~

Guidelines for E2E testing:

* Complete user workflow testing
* Use of real infrastructure
* UI-based testing where possible
* Realistic user scenarios
* Data flow verification
* Performance testing under realistic conditions
* Complete environment setup and teardown
* Documentation of prerequisites

Test Environment
~~~~~~~~~~~~~~~~~~~~~

Requirements for test environments:

* Consistent configuration
* Reproducible environments
* Isolation from production data
* Database resetting between test runs
* Fixtures for environment setup
* Documentation of requirements
* Test-specific configuration

Best Practices
~~~~~~~~~~~~~~~~~~~

General testing best practices:

* Test independence
* Clear, descriptive test names
* Deterministic test design
* Avoidance of random data (except in specific cases)
* Readable and maintainable tests
* Behavior-based testing (not implementation details)
* Requirement validation
* Documentation of complex test logic

AI-Optimized Testing
~~~~~~~~~~~~~~~~~~~~~~~~~

Testing patterns optimized for AI:

* AI-understandable test design
* Clear test intent documentation
* Descriptive function names
* Consistent structure for AI analysis
* Explicit edge case documentation
* Test metadata for AI
* Clear helper function documentation
* Typed interfaces for test fixtures and mocks
* Comprehensive docstrings in test utilities
* Recognizable test patterns for AI

Rationale
---------

The testing rules serve several essential purposes:

1. **Quality Assurance**: Ensuring code functions as expected
2. **Regression Prevention**: Catching issues early before they impact users
3. **Documentation**: Tests serve as executable documentation
4. **Design Improvement**: Tests often lead to better code design
5. **Confidence**: Providing confidence for refactoring and enhancement

By following these testing rules, developers can create robust, reliable code with automated validation of its correctness.
