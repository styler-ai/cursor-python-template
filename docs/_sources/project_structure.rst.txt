=========================
Project Structure
=========================

Overview of Documentation Folders
---------------------------------

This project provides two separate documentation folders:

- **/template-docs/**: This is a ready-to-use Sphinx documentation template for users of this Python project template. Copy or rename this folder to `/docs/` in your own project to quickly set up Sphinx documentation. It includes example configuration, build scripts, and a formatting script.
- **/template-sphinx-documentation/**: This folder contains the documentation for the template project itself (i.e., the documentation you are reading now). It is not intended to be copied or used as a template by users.
- **/docs/**: This folder is used for the built HTML output of the template project's own documentation, and is published via GitHub Pages. Do not edit by hand.

How to Use the Sphinx Template
------------------------------

1. **For your own project:**
   - Copy or rename `/template-docs/` to `/docs/` in your new repository.
   - Edit the contents (add your `.rst` or `.md` files, update `conf.py`, etc.).
   - Use the provided `Makefile` or `make.bat` to build your documentation.
   - The included `fix_rst_formatting.py` script will help keep your RST files clean and warning-free.

2. **For this template project:**
   - `/template-sphinx-documentation/` is only for the documentation of this template itself. You do not need to use or copy it for your own project.

Directory Layout
----------------

The template follows a standardized directory layout designed to promote good Python project organization:

.. code-block:: none

    cursor-python-template/
    ├── .cursor/                    # Cursor editor configuration
    │   └── rules/                  # Cursor AI rules
    ├── .github/                    # GitHub configuration (optional)
    │   └── workflows/              # GitHub Actions workflows (optional)
    ├── template-docs/              # Sphinx documentation template for users
    │   ├── conf.py                 # Sphinx configuration
    │   ├── fix_rst_formatting.py   # Automatic RST formatting script
    │   ├── Makefile                # Unix build script
    │   ├── make.bat                # Windows build script
    │   ├── index.md                # Example index file
    │   └── rules-documentation/    # Example RST documentation
    ├── template-sphinx-documentation/  # Documentation for this template project
    │   ├── source/                 # Sphinx documentation source files
    │   ├── fix_rst_formatting.py   # Automatic RST formatting script
    │   ├── Makefile                # Unix build script
    │   └── make.bat                # Windows build script
    ├── docs/                       # Built HTML output for GitHub Pages (do not edit by hand)
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

.template-docs/
~~~~~~~~~~~~~~~~~~~~
This directory is a Sphinx documentation template for users of this Python project template:

- ``conf.py``: Sphinx configuration file
- ``fix_rst_formatting.py``: Script to automatically fix common RST formatting issues
- ``Makefile``: Unix build script (runs formatting script automatically)
- ``make.bat``: Windows build script (runs formatting script automatically)
- ``index.md``: Example Markdown index file
- ``rules-documentation/``: Example RST documentation

.template-sphinx-documentation/
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
This directory contains all Sphinx documentation source files, configuration, and build scripts for the template project itself:

- ``source/``: Main documentation source files (reStructuredText)
- ``fix_rst_formatting.py``: Script to automatically fix common RST formatting issues
- ``Makefile``: Unix build script (runs formatting script automatically)
- ``make.bat``: Windows build script (runs formatting script automatically)

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

/docs/
~~~~~~~~~~~
This directory contains **only** the built HTML output for GitHub Pages. Do not edit files here by hand. The contents are overwritten each time you build and publish the documentation.

scripts/
~~~~~~~~~~~~~

The ``scripts/`` directory is for utility scripts and tools:

- Setup scripts
- Development utilities
- Build scripts
- Any other helpful automation tools

Automatic RST Formatting Script
-------------------------------

The template includes a script to automatically fix common formatting issues in reStructuredText (RST) documentation files:

- **Script:** ``fix_rst_formatting.py`` (in ``/template-sphinx-documentation/``)
- **Purpose:**
  - Ensures title overlines/underlines match the title length
  - Fixes section and subsection heading formatting
  - Standardizes formatting across all documentation files
- **Integration:**
  - The script runs automatically every time you build the documentation using ``make html`` (Unix) or ``make.bat html`` (Windows)
  - You can also run it manually: ``python fix_rst_formatting.py`` from within ``/template-sphinx-documentation/``
- **Benefit:**
  - Helps prevent common Sphinx warnings and ensures professional, consistent documentation formatting.

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