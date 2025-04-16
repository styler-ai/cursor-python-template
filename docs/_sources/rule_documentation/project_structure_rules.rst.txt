=========================
Project Structure Rules
=========================

Guidelines for defining and maintaining the project's directory structure, naming conventions, and architecture.

File: `project-structure-rules.mdc`

Purpose
-------

The Project Structure Rules establish a consistent framework for organizing files, directories, and modules within the project, ensuring logical organization, maintainability, and scalability.

Key Principles
--------------

* **Logical Organization**: Files and directories organized by purpose
* **Consistent Naming**: Clear and predictable naming conventions
* **Component Isolation**: Separation of concerns in project components
* **Scalable Architecture**: Structure supports project growth
* **Accessibility**: Easy location of project elements
* **Documentation Alignment**: Structure reflected in documentation

Detailed Contents
-----------------

Directory Structure
~~~~~~~~~~~~~~~~~~~~~~~~

Guidelines for project-level organization:

* Root directory contents
* Top-level directory organization
* Configuration file placement
* Documentation directory structure
* Source code organization
* Test directory structure
* Asset organization
* Build artifact management

Module Organization
~~~~~~~~~~~~~~~~~~~~~~~~

Standards for structuring code modules:

* Module boundary definitions
* Dependency management between modules
* Interface and implementation separation
* Public vs. private components
* Module versioning approach
* Cross-module communication patterns

File Naming Conventions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rules for consistent file naming:

* File naming pattern by file type
* Case conventions (camelCase, snake_case, etc.)
* Special file name designations
* Version indicators in filenames
* Temporary file conventions
* Generated file naming patterns

Component Structure
~~~~~~~~~~~~~~~~~~~~~~~~

Guidelines for internal component organization:

* Component directory organization
* Required files for components
* Component interface definitions
* Resource organization within components
* Component metadata requirements
* Component testing structure

Configuration Management
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Standards for configuration organization:

* Environment-specific configuration approach
* Configuration file formats and locations
* Default configuration handling
* Secret management approach
* Configuration documentation requirements
* Configuration validation process

Resource Organization
~~~~~~~~~~~~~~~~~~~~~~~~~~

Guidelines for managing project resources:

* Static resource directory structure
* Resource naming conventions
* Resource versioning approach
* Resource referencing standards
* Resource optimization requirements
* Internationalization resource structure

Build System Structure
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Standards for build configuration:

* Build script organization
* Build configuration file placement
* Build artifact organization
* CI/CD configuration location
* Build dependency management
* Build environment configuration

Test Organization
~~~~~~~~~~~~~~~~~~~~~~

Guidelines for organizing tests:

* Test directory structure
* Test file naming conventions
* Test resource management
* Mock and fixture organization
* Test configuration placement
* Test report output location

Documentation Structure
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Standards for documentation organization:

* Documentation file formats
* Documentation directory hierarchy
* API documentation organization
* User guide structure
* Developer documentation placement
* Code example organization

Dependency Management
~~~~~~~~~~~~~~~~~~~~~~~~~~

Guidelines for managing external dependencies:

* Dependency declaration location
* Dependency version management approach
* Third-party code integration structure
* Vendor code management
* Package organization
* Dependency documentation requirements

Version Control Structure
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Standards for repository organization:

* Branch naming conventions
* Repository organization for monorepo/multi-repo
* Version tagging approach
* Ignore file configuration
* Repository-specific configuration
* Pre-commit hook organization

Deployment Structure
~~~~~~~~~~~~~~~~~~~~~~~~~

Guidelines for deployment configuration:

* Deployment script organization
* Environment configuration structure
* Service definition organization
* Container configuration placement
* Infrastructure-as-code organization
* Release artifact structure

Rationale
---------

The Project Structure Rules provide several key benefits:

1. **Maintainability**: Clear structure makes code easier to maintain
2. **Onboarding**: New team members can quickly understand the project organization
3. **Scalability**: Structure supports growth without requiring reorganization
4. **Consistency**: Prevents ad-hoc organization decisions that create confusion
5. **Efficiency**: Developers can quickly locate and organize project elements 