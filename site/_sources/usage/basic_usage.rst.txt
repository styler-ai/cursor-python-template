=========================
Basic Usage
=========================

Getting Started
---------------

This section guides you through using the Cursor Python Template to create a new Python project.

Prerequisites
~~~~~~~~~~~~~~~~~~

Before getting started, ensure you have:

* **Cursor Editor:** Version 0.48.0 or later - download from https://cursor.sh/
* **Python 3.8+**: For running your project code
* **PowerShell**: Version 5.1 or later (for Windows users)
* **Git**: For version control
* **pip**: For package management

Creating a New Project
----------------------

1. Use GitHub's Template Feature
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The easiest way to use this template is through GitHub:

1. Navigate to the template's GitHub repository
2. Click the "Use this template" button
3. Choose a name and description for your new project repository
4. Click "Create repository from template"

2. Clone Your New Repository
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Clone your newly created repository:

.. code-block:: bash

   git clone https://github.com/your_username/your_repository.git
   cd your_repository

3. Customize the Template
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

After cloning, you'll need to customize the template for your project:

1. Rename the ``src/project_name_placeholder/`` directory to your actual Python package name
2. Update ``pyproject.toml`` with your project's details:
   * Project name
   * Description
   * Author information
   * URLs
   * Dependencies
3. Update the ``README.md`` file to describe your specific project
4. Update the ``LICENSE`` file with the current year and your name/organization

4. Set Up a Virtual Environment
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Create and activate a virtual environment:

**Windows PowerShell:**

.. code-block:: powershell

   python -m venv venv
   .\venv\Scripts\Activate.ps1

**Linux/macOS Bash:**

.. code-block:: bash

   python3 -m venv venv
   source venv/bin/activate

5. Install Dependencies
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Install the project's dependencies:

.. code-block:: bash

   pip install -r requirements.txt
   pip install -e ".[dev]"  # Install in editable mode with dev dependencies 