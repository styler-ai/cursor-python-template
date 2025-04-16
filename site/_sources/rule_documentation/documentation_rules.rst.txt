=========================
Documentation Rules
=========================

Standards for comprehensive and consistent documentation throughout the project.

File: `documentation-rules.mdc`

Purpose
-------

The Documentation Rules establish standards for creating and maintaining comprehensive documentation across the project. These rules ensure consistency, completeness, and clarity in all documentation, from code comments to user guides.

Key Principles
--------------

* **Comprehensive Coverage**: Documentation for all aspects of the project
* **Consistent Format**: Standard formats for different types of documentation
* **Clear Structure**: Logical organization of documentation materials
* **Up-to-Date Content**: Regular updates to match code changes
* **User Focus**: Documentation targeted to appropriate audiences

Detailed Contents
-----------------

Documentation Structure
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Guidelines for organizing documentation:

* Use of Sphinx for documentation generation
* Logical sectioning of documentation
* Cross-referencing between related sections
* Diagrams for complex components
* Directory-based organization
* reStructuredText directives for enhanced features
* API reference generation from docstrings

Module-Level Documentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Requirements for module documentation:

* Module-level docstrings at the beginning of each file
* Purpose statement at the start
* Feature list in numbered format
* Usage examples where appropriate
* Documentation of design patterns used
* Listing of main classes/functions in the module

Class-Level Documentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Standards for class documentation:

* Clear purpose and responsibility explanation
* Design pattern implementation documentation
* Key attribute listings with descriptions
* Inheritance relationship documentation
* Usage examples for complex classes
* Performance consideration notes

Method-Level Documentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Requirements for method documentation:

* Clear statement of method purpose
* Explanation of implementation approach
* NumPy-style parameter documentation
* Return value documentation
* Exception documentation
* Usage examples for complex methods

Docstring Format
~~~~~~~~~~~~~~~~~~~~~

Standardized docstring format:

* Brief purpose description
* Step-by-step explanation of functionality
* Parameter documentation with types
* Return value documentation with types
* Proper indentation and formatting
* Full sentences with punctuation

Style Guidelines
~~~~~~~~~~~~~~~~~~~~~

Documentation style standards:

* Consistent indentation in docstrings
* 80-character line length limit
* Full sentences with proper punctuation
* Specific, not vague descriptions
* Documentation updates with code changes
* Code formatting for code references

What vs How Documentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Balance between different documentation types:

* Explanation of both what a component does and how it works
* Focus on intent and design decisions
* Implementation approach explanation

Documentation Files
~~~~~~~~~~~~~~~~~~~~~~~~

Standard documentation files:

* README.md for project overview
* CONTRIBUTING.md for contribution guidelines
* IMPLEMENTATION_PLAN.md for detailed status
* docs/ directory for Sphinx documentation
* API reference documentation
* User and developer guides

Sphinx Documentation Management
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Guidelines for Sphinx documentation:

* When to build documentation
* Build process steps
* Error and warning resolution
* Documentation verification process
* Link and reference checking

Diagram Generation
~~~~~~~~~~~~~~~~~~~~~~~

Standards for architecture diagrams:

* System architecture diagrams
* Component relationship diagrams
* Data flow diagrams
* Generation approach using Python with PIL
* Output location and naming conventions

Rationale
---------

The documentation rules serve several essential purposes:

1. **Knowledge Transfer**: Facilitating understanding of the codebase
2. **Maintenance Support**: Making it easier to maintain and modify code
3. **Onboarding**: Helping new developers get up to speed
4. **Quality Assurance**: Ensuring consistency and completeness in documentation
5. **User Support**: Providing clear information for users and stakeholders

By following these documentation rules, developers can create clear, comprehensive, and consistent documentation that supports both development and use of the software.
