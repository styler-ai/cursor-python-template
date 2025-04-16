=========================
Project Structure
=========================

Directory Layout
----------------

The template follows a standardized directory layout designed to promote good Python project organization:

.. code-block:: none

    cursor-python-template/
    ├── .cursor/                    # Cursor editor configuration
    │   └── rules/                  # Cursor AI rules
    ├── .github/                    # GitHub configuration (optional)
    │   └── workflows/              # GitHub Actions workflows (optional)
    ├── docs/                       # Documentation
    │   ├── source/                 # Sphinx documentation source
    │   ├── conf.py                 # Sphinx configuration
    │   ├── index.md                # Documentation index
    │   ├── make.bat                # Windows build script
    │   └── Makefile                # Unix build script
    ├── scripts/                    # Utility scripts
    ├── src/                        # Source code
    │   └── project_name_placeholder/ # Main package directory (to be renamed)
    │       └── __init__.py         # Package initialization file
    ├── tests/                      # Test files
    │   └── __init__.py             # Test package initialization
    ├── .gitignore                  # Git ignore file
    ├── CONTRIBUTING.md             # Contribution guidelines
    ├── LICENSE                     # License file
    ├── pyproject.toml              # Python project configuration
    ├── README.md                   # Project README
    └── requirements.txt            # Dependencies

Key Components
--------------

.cursor/rules/
~~~~~~~~~~~~~~~~~~~

This directory contains rule files that guide Cursor's AI in providing context-aware assistance:

- ``code-review-rules.mdc``: Guidelines for code review practices
- ``context-detection-rules.mdc``: Patterns for detecting and managing context
- ``core-rules.mdc``: Fundamental development principles and patterns
- ``cursor-startup-rules.mdc``: Rules for Cursor AI's initialization process
- ``documentation-rules.mdc``: Documentation standards and requirements
- ``github-issues-rules.mdc``: GitHub issue management guidelines
- ``github-rules.mdc``: GitHub workflow and best practices
- ``powershell-rules.mdc``: PowerShell coding standards
- ``project-plan-management-rules.mdc``: Project plan management guidelines
- ``project-structure-rules.mdc``: Rules for project organization
- ``python-rules.mdc``: Python coding standards
- ``testing-rules.mdc``: Testing requirements and best practices

src/
~~~~~~~~~

The ``src/`` directory contains the main package code:

- By default, it contains a placeholder directory ``project_name_placeholder/`` which should be renamed to match your actual project name.
- This follows the src layout approach, which offers several advantages including cleaner imports and more explicit installation requirements.

tests/
~~~~~~~~~~~

The ``tests/`` directory contains all test files:

- Test files should follow the pattern ``test_*.py`` or ``*_test.py``
- The test directory structure should mirror the package structure in ``src/``
- Tests are configured to run with pytest

docs/
~~~~~~~~~~

The ``docs/`` directory contains project documentation:

- Uses Sphinx for generating documentation
- Includes a basic configuration in ``conf.py``
- Contains an index file with a starting structure
- Includes build scripts for both Windows (``make.bat``) and Unix (``Makefile``)

scripts/
~~~~~~~~~~~~~

The ``scripts/`` directory is for utility scripts and tools:

- Setup scripts
- Development utilities
- Build scripts
- Any other helpful automation tools

Configuration Files
-------------------

pyproject.toml
~~~~~~~~~~~~~~~~~~~

The ``pyproject.toml`` file defines the project's metadata and build system requirements:

- Project name, version, description, and author details
- Dependencies and development dependencies
- Build system configuration
- Tool configurations (e.g., pytest, black, etc.)

requirements.txt
~~~~~~~~~~~~~~~~~~~~~

The ``requirements.txt`` file lists the project's dependencies:

- Production dependencies
- May include version constraints
- Used for direct installation via pip

.gitignore
~~~~~~~~~~~~~~~

The ``.gitignore`` file specifies which files should be ignored by Git:

- Python-specific patterns (``__pycache__``, ``.pyc``, etc.)
- Environment-specific files (``venv/``, ``.env``, etc.)
- Build artifacts (``dist/``, ``build/``, etc.)
- Editor-specific files
- OS-specific files

LICENSE
~~~~~~~~~~~~

The ``LICENSE`` file contains the project's license, by default MIT License:

- Should be updated with the current year and project author's name/organization

CONTRIBUTING.md
~~~~~~~~~~~~~~~~~~~~

The ``CONTRIBUTING.md`` file provides guidelines for contributing to the project:

- How to set up a development environment
- Coding standards
- Pull request process
- Issue reporting guidelines 