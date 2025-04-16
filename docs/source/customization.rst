=========================
Customization
=========================

Adapting the Template
---------------------

This section covers how to customize the Cursor Python Template for your specific project needs.

Project-Specific Customizations
-------------------------------

1. Rename the Package
~~~~~~~~~~~~~~~~~~~~~~~~~~

Replace the placeholder package name with your actual package name:

1. Navigate to the ``src/`` directory
2. Rename the ``project_name_placeholder/`` directory to your package name
3. Update imports in any files that reference the old package name

2. Update Project Metadata
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Edit ``pyproject.toml`` to include your project's metadata:

.. code-block:: toml

   [project]
   name = "your-package-name"
   version = "0.1.0"
   description = "Your project description"
   authors = [
      {name = "Your Name", email = "your.email@example.com"},
   ]
   readme = "README.md"
   requires-python = ">=3.8"
   # ... other metadata

3. Update Documentation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Update the documentation templates with your project-specific information:

1. Edit ``docs/conf.py`` to set your project name, author, and version
2. Modify ``docs/index.md`` and other documentation files to describe your project
3. Create additional documentation pages as needed

4. Customize README
~~~~~~~~~~~~~~~~~~~~~~~~

Update ``README.md`` with:

* Your project name and description
* Project-specific installation instructions
* Usage examples
* Project status
* Contribution guidelines

5. Update License
~~~~~~~~~~~~~~~~~~~~~~

Make sure to update the ``LICENSE`` file with:

* Current year
* Your name or organization

Creating Custom Cursor Rules
----------------------------

The most powerful way to customize the template is by creating your own Cursor rules:

1. Create a New Rule File
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create a new ``.mdc`` file in the ``.cursor/rules/`` directory:

.. code-block:: bash

   # Example: Creating a rule file for your specific project architecture
   touch .cursor/rules/myproject-architecture-rules.mdc

2. Define Rule Metadata
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Start your rule file with YAML frontmatter:

.. code-block:: yaml

   ---
   description: Project-specific architecture guidelines for MyProject
   globs: 
     - "src/**/*.py"
     - "tests/**/*.py"
   alwaysApply: false
   ---

The metadata includes:

* ``description``: Brief explanation of the rule's purpose
* ``globs``: File patterns where the rule applies
* ``alwaysApply``: Whether the rule applies without explicit invocation

3. Write Rule Content
~~~~~~~~~~~~~~~~~~~~~~~~~~

After the frontmatter, add Markdown content with your rules:

.. code-block:: markdown

   # MyProject Architecture Guidelines

   ## Core Components

   - **DataManager**: Responsible for all data access operations
   - **ProcessingEngine**: Handles data transformation
   - **APIHandler**: Manages external API interactions

   ## Component Interaction Rules

   1. DataManager must never directly call ProcessingEngine
   2. All API calls must go through APIHandler
   3. ...

   ## Naming Conventions

   - Use `Data` prefix for all data access classes
   - Use `Process` prefix for all processing classes
   - ...

4. Test Your Rules
~~~~~~~~~~~~~~~~~~~~~~~

Test your new rules by:

1. Opening a relevant file in Cursor
2. Asking the AI to follow your new rules
3. Verifying the AI's responses align with your expectations

Extending the Template
----------------------

You can extend the template with additional components:

1. Add CI/CD Workflows
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create GitHub Actions workflows in ``.github/workflows/``:

.. code-block:: yaml

   # .github/workflows/tests.yml
   name: Tests
   on: [push, pull_request]
   jobs:
     test:
       runs-on: ubuntu-latest
       steps:
         - uses: actions/checkout@v3
         - name: Set up Python
           uses: actions/setup-python@v4
           with:
             python-version: '3.10'
         - name: Install dependencies
           run: |
             python -m pip install --upgrade pip
             pip install -e ".[dev]"
         - name: Test with pytest
           run: pytest

2. Add Code Quality Tools
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Configure code quality tools like Black, isort, mypy, or flake8 in ``pyproject.toml``:

.. code-block:: toml

   [tool.black]
   line-length = 88
   target-version = ['py38']

   [tool.isort]
   profile = "black"
   line_length = 88

   [tool.mypy]
   python_version = "3.8"
   warn_return_any = true
   warn_unused_configs = true

3. Customize Testing
~~~~~~~~~~~~~~~~~~~~~~~~~

Extend your testing setup:

1. Add test fixtures in ``tests/conftest.py``
2. Create subdirectories for different test types (unit, integration, etc.)
3. Configure test coverage reporting