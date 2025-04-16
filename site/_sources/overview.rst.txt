=========================
Overview
=========================

Purpose and Goals
-----------------

The Cursor Python Template is designed to provide a standardized starting point for Python projects leveraging the Cursor editor's AI capabilities. This template serves several key purposes:

1. **Standardize Project Structure**: Provides a consistent layout following Python best practices with src, tests, docs, and scripts directories.

2. **Enhance AI Assistance**: Contains a comprehensive set of rules in the `.cursor/rules/` directory that guide Cursor's AI in providing context-aware assistance.

3. **Enforce Best Practices**: Implements coding standards, testing frameworks, and documentation structures that follow industry best practices.

4. **Accelerate Setup**: Eliminates the need to create project boilerplate for each new project.

Key Features
------------

* **Standard Directory Layout**:
  - ``src/``: Main package source code
  - ``tests/``: Test files and test resources
  - ``docs/``: Documentation files using Sphinx
  - ``scripts/``: Utility scripts and tools
  - ``.cursor/rules/``: Cursor AI rules

* **Pre-configured Cursor AI Rules**:
  - Language-specific coding standards (Python, PowerShell, etc.)
  - Documentation requirements
  - Testing standards
  - Code review guidelines
  - Project structure requirements
  - GitHub workflow recommendations

* **Development Setup**:
  - pytest configuration for testing
  - Sphinx setup for documentation
  - Standard Python project files (pyproject.toml, requirements.txt)
  - Pre-configured .gitignore

* **Documentation**:
  - Sphinx documentation template
  - Documentation standards
  - Template for API documentation

Target Audience
---------------

This template is intended for:

* Developers starting new Python projects using the Cursor editor
* Teams wanting to standardize their Python development practices
* Individual developers looking to follow best practices
* Projects wanting to leverage Cursor's AI capabilities effectively

Prerequisites
-------------

To use this template effectively, you'll need:

* **Cursor Editor**: Version 0.48.0 or later - This template is specifically designed for use with Cursor
* **Python**: Python 3.8 or later
* **PowerShell**: For running the setup scripts (Windows) or equivalent shell on other platforms
* **Git**: For version control

Getting Started
---------------

To get started with the template, see the :doc:`usage/index` section. 