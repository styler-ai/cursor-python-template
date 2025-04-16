=========================
PowerShell Rules
=========================

Standards and best practices for PowerShell scripting.

File: `powershell-rules.mdc`

Purpose
-------

The PowerShell Rules establish coding standards and best practices for PowerShell scripting within the project. These rules ensure scripts are efficient, maintainable, and follow consistent patterns.

Key Principles
--------------

* **Appropriate Command Selection**: Choosing the right command types for each task
* **Object-Oriented Approach**: Leveraging PowerShell's object-oriented nature
* **Consistent Naming**: Following standard naming conventions
* **Proper Error Handling**: Implementing robust error management
* **Performance Optimization**: Writing efficient PowerShell code

Detailed Contents
-----------------

Core PowerShell Principles
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Fundamental principles for PowerShell scripting:

* Using PowerShell's object-oriented capabilities rather than text processing
* Leveraging approved PowerShell verbs for function naming
* Taking advantage of the pipeline for chaining operations
* Using parameter validation attributes
* Preferring structured data over plain text

Command Selection Guidelines
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Standards for choosing appropriate commands:

* Selecting commands based on task requirements
* Using PowerShell cmdlets for rich object output
* Appropriate use of external commands when necessary
* Proper use of PowerShell aliases
* Balancing functionality, performance, and readability

Naming Conventions
~~~~~~~~~~~~~~~~~~~~~~~

Consistent naming standards:

* PascalCase for function names (Get-ContextData)
* PascalCase for parameter names ($ContextName)
* camelCase for variable names ($contextData)
* Descriptive, meaningful names for all identifiers

Script Structure
~~~~~~~~~~~~~~~~~~~~~

Guidelines for organizing script contents:

* Beginning scripts with comment-based help
* Following help block with required modules
* Proper parameter declarations
* Using regions to organize code sections

Error Handling
~~~~~~~~~~~~~~~~~~~

Standards for robust error management:

* Using try/catch blocks for error handling
* Setting appropriate $ErrorActionPreference
* Using -ErrorAction parameter for critical cmdlets
* Proper error reporting with Write-Error
* Meaningful error messages with context

Performance Considerations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Guidelines for optimizing PowerShell performance:

* Using appropriate collection types for growing collections
* Optimizing Where-Object usage
* Using hashtables for lookups
* Minimizing ForEach-Object for large collections
* Limiting results when appropriate

Security Practices
~~~~~~~~~~~~~~~~~~~~~~~

Standards for secure PowerShell scripting:

* Never including credentials in scripts
* Using secure strings for sensitive information
* Signing scripts for production deployments
* Setting appropriate execution policies
* Validating user input
* Following least-privilege principle

Rationale
---------

The PowerShell rules serve several essential purposes:

1. **Consistency**: Ensuring consistent coding style across PowerShell scripts
2. **Maintainability**: Making scripts easier to understand and maintain
3. **Performance**: Optimizing script execution and resource usage
4. **Security**: Implementing secure scripting practices
5. **Reliability**: Creating robust scripts with proper error handling

By following these PowerShell rules, developers can create efficient, maintainable, and secure PowerShell scripts that follow best practices. 