# Project Name Placeholder

[📖 **View the Online Documentation**](https://styler-ai.github.io/cursor-python-template/index.html)

## Documentation Folders Overview

This project provides two separate documentation folders:

- **/template-docs/**: This is a ready-to-use Sphinx documentation template for users of this Python project template. Copy or rename this folder to `/docs/` in your own project to quickly set up Sphinx documentation. It includes example configuration, build scripts, and a formatting script.
- **/template-sphinx-documentation/**: This folder contains the documentation for the template project itself (i.e., the documentation you are reading now). It is not intended to be copied or used as a template by users.
- **/docs/**: This folder is used for the built HTML output of the template project's own documentation, and is published via GitHub Pages. Do not edit by hand.

## How to Use the Sphinx Template

1. **For your own project:**
   - Copy or rename `/template-docs/` to `/docs/` in your new repository.
   - Edit the contents (add your `.rst` or `.md` files, update `conf.py`, etc.).
   - Use the provided `Makefile` or `make.bat` to build your documentation.
   - The included `fix_rst_formatting.py` script will help keep your RST files clean and warning-free.

2. **For this template project:**
   - `/template-sphinx-documentation/` is only for the documentation of this template itself. You do not need to use or copy it for your own project.

## Project Structure

- `/template-docs/`: Sphinx documentation template for users (copy/rename to `/docs/` in your own project)
- `/template-sphinx-documentation/`: Documentation for this template project (not for user projects)
- `/docs/`: Built HTML output for GitHub Pages (do not edit by hand)
- `/src/`: Python package code
- `/tests/`: Test files
- `/scripts/`: Utility scripts
- `/.cursor/rules/`: Cursor AI rules

For more information on Sphinx, see [sphinx-doc.org](https://www.sphinx-doc.org/).

## Automatic RST Formatting for Documentation

This template includes an automatic formatting script for reStructuredText (RST) documentation files:

- **Script:** `fix_rst_formatting.py` (located in `/template-sphinx-documentation/`)
- **Purpose:**
  - Ensures title overlines/underlines match the title length
  - Fixes section and subsection heading formatting
  - Standardizes formatting across all documentation files
- **How it works:**
  - The script runs automatically every time you build the documentation using `make html` (Unix) or `make.bat html` (Windows)
  - You can also run it manually: `python fix_rst_formatting.py` from within `/template-sphinx-documentation/`
- **Benefit:**
  - Helps prevent common Sphinx warnings and ensures professional, consistent documentation formatting.

## Overview

(Provide a brief overview of the project here. Explain it's a template for Python projects, including standard structure and generic AI rules.)

**This template is specifically designed for development using the [Cursor](https://cursor.sh/) editor.** The integrated AI capabilities and the project-specific instructions within the `.cursor/rules/` directory are essential components of the intended workflow. Using an editor other than Cursor will prevent you from leveraging these core features.

This template is maintained by Shaun Tyler (styler-ai).

## Features

* Standard project layout (`src`, `tests`, `docs`, `scripts`)
* `.cursor/rules/` directory pre-populated with generic Cursor AI rules.
* Standard configuration files (`.gitignore`, `pyproject.toml`, `requirements.txt`).
* Basic `pytest` setup in `tests/`.
* Placeholder documentation structure in `docs/`.
* Automatic RST formatting for documentation files.
* Placeholder PowerShell setup script in `scripts/`.
* MIT License.
* Contribution guidelines.

## Using This Template

1. Click the "Use this template" button on the GitHub repository page.
2. Choose a name and description for your new project repository.
3. Clone your newly created repository.
4. **Customize Placeholders:**
   * Rename the `src/project_name_placeholder/` directory to your actual Python package name.
   * Update `pyproject.toml` with your project's name, description, author details, URLs, and dependencies.
   * **Update this `README.md` file to describe your specific project.** (Replace the sections above with your project's details).
   * Update the `LICENSE` file with the current year and your full name/organization.
5. **Add Project-Specific Rules:** Review the generic rules in `.cursor/rules/`. Create a **new** project-specific rule file (e.g., `myproject-rules.mdc`) in `.cursor/rules/` to define rules unique to your project (architecture details, key components, specific workflows, etc.). Do **not** modify the generic rules directly unless contributing back to the template.
6. Ensure you are using the Cursor editor and follow the installation steps below.

---
**(Note to project author: Replace the content above this line with your project-specific README content. Keep the sections below as a starting point.)**
---

## Getting Started (For a Project Created from this Template)

**(Note: This template requires the Cursor editor for its intended AI-assisted workflow - see https://cursor.sh/)**

### Prerequisites

*   **Cursor Editor:** Version >= 0.48.0 or later
*   **PowerShell:** Version 5.1 or later (for setup script and terminal interaction on Windows)
*   Python 3.8+
*   pip
*   Git (for version control)
*   (Any other system dependencies, e.g., `make` if using the Makefile)

### Installation

1. Clone your new project repository:
   ```bash
   git clone https://github.com/your_username/your_repository.git # Update URL
   cd your_repository
   ```
2. Create and activate a virtual environment (recommended):
   ```bash
   # Windows PowerShell:
   python -m venv venv
   .\venv\Scripts\Activate.ps1
   # Linux/macOS Bash:
   # python3 -m venv venv
   # source venv/bin/activate
   ```
3. Install dependencies:
   ```