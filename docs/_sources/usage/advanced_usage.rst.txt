=========================
Advanced Usage
=========================

Working with Cursor AI
----------------------

The true power of this template comes when using it with the Cursor editor:

1. Open your project in Cursor
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* Launch Cursor
* Open your project folder (File > Open Folder...)
* The Cursor AI will automatically load the rule files from ``.cursor/rules/``

2. Leverage AI Assistance
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When working in Cursor:

* The AI will apply the appropriate rules based on the file types you're editing
* You can explicitly ask the AI to follow specific rules
* The AI will help you maintain the coding standards defined in the rules
* Use the AI to generate code, refactor existing code, and answer questions about your project

3. Creating Project-Specific Rules
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To add project-specific rules:

1. Create a new rule file in ``.cursor/rules/`` (e.g., ``.cursor/rules/myproject-rules.mdc``)
2. Follow the rule file format with YAML frontmatter and Markdown content
3. Define rules specific to your project's architecture and requirements

See the :doc:`../customization` section for more details.

Running Tests
-------------

Run the tests using pytest:

.. code-block:: bash

   pytest

Building Documentation
----------------------

Build the documentation using Sphinx:

.. code-block:: bash

   cd docs
   make html  # On Windows, use .\make.bat html

The generated documentation will be available in ``docs/_build/html/``. 