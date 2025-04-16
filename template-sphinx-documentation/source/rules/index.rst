=========================
Cursor Rules
=========================

Introduction to Cursor Rules
----------------------------

Cursor rules are a core feature of this template, providing AI-guidance for development. 
These rules are stored in the ``.cursor/rules/`` directory and serve several purposes:

1. **Guide the Cursor AI**: Provide context-specific guidance to the Cursor AI assistant
2. **Enforce Standards**: Establish consistent coding and documentation standards
3. **Streamline Development**: Provide templates and patterns for common tasks
4. **Ensure Quality**: Set expectations for testing, code review, and documentation

The rules are written in ``.mdc`` files (Markdown with YAML frontmatter) that Cursor's AI can interpret 
and apply during development.

Rule Structure
--------------

Each rule file typically has:

1. **Metadata Section**: YAML frontmatter that defines:
   - ``description``: Brief purpose of the rule
   - ``globs``: File patterns where the rule applies
   - ``alwaysApply``: Whether the rule applies without being explicitly invoked

2. **Content Section**: Markdown content that includes:
   - Headers and sections for organization
   - Code examples and patterns
   - Guidelines and requirements
   - Best practices and recommendations

How Rules Work
--------------

When using Cursor as your editor:

1. The AI automatically loads these rules at startup
2. When you work with files that match the rule's glob patterns, the relevant rules are applied
3. The AI uses these rules to provide context-aware suggestions and assistance
4. You can also explicitly instruct the AI to follow specific rules

Customizing Rules
-----------------

When using this template for your own project, you should:

1. Keep the generic rules as-is for standard guidance
2. Create new project-specific rule files to add your own standards and patterns
3. Don't modify the existing generic rules directly unless contributing back to the template

Creating custom rules is covered in the :doc:`../customization` section. 

For detailed documentation of all available rules, see the :doc:`../rule_documentation/index` section. 