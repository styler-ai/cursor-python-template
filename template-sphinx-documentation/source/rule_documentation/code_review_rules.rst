=========================
Code Review Rules
=========================

Guidelines for conducting effective code reviews.

File: `code-review-rules.mdc`

Purpose
-------

The Code Review Rules establish standards and best practices for conducting code reviews within the project. These rules ensure thorough, constructive reviews that improve code quality while maintaining a positive team dynamic.

Key Principles
--------------

* **Quality Focus**: Reviewing for overall quality, not just correctness
* **Constructive Feedback**: Providing helpful, actionable suggestions
* **Code-Centered**: Focusing on the code, not the author
* **Manageable Scope**: Reviewing appropriately sized changes
* **Timeliness**: Providing and responding to reviews promptly
* **Understanding First**: Seeking to understand before suggesting changes

Detailed Contents
-----------------

General Code Review Principles
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Foundational principles for effective reviews:

* Reviewing for quality beyond just basic correctness
* Maintaining constructive and respectful communication
* Focusing feedback on the code rather than the author
* Reviewing manageable chunks of code (under 400 lines)
* Responding to reviews promptly
* Understanding the code's purpose before suggesting changes
* Providing context and rationale for feedback
* Citing standards and documentation when applicable

Review Focus Areas
~~~~~~~~~~~~~~~~~~~~~~~

Key aspects to examine during code reviews:

* **Functionality**: Correctness, edge cases, error handling, race conditions
* **Design**: SOLID principles, modularity, interfaces, separation of concerns
* **Readability**: Clarity, naming, comments, consistency, magic values
* **Performance**: Optimization, efficiency, data structures, memory usage
* **Security**: Input validation, sensitive data handling, authentication
* **Testing**: Coverage, edge cases, maintainability, behavior validation

PR Requirements
~~~~~~~~~~~~~~~~~~~~

Standards for pull requests:

* Including appropriate tests
* Updating documentation as needed
* Passing all CI/CD checks
* Maintaining reasonable size (under 400 lines when possible)
* Providing clear change descriptions
* Referencing related issues
* Avoiding unrelated changes

Review Process
~~~~~~~~~~~~~~~~~~~

Standardized review workflow:

1. Author submits PR with description
2. Automated checks run
3. Reviewers examine code within defined timeframe
4. Authors address feedback promptly
5. Reviewers verify changes
6. Approval once all feedback is addressed
7. Author merges after approval

AI Agent Self-Review Guidelines
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Standards for AI-generated code self-review:

* Applying project-specific patterns consistently
* Verifying edge case handling
* Ensuring security best practices
* Checking for completion of all requirements
* Validating naming conventions
* Verifying error handling comprehensiveness
* Ensuring code follows project style
* Checking performance implications
* Verifying dependency management

AI-Assisted Code Reviews
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Guidelines for AI involvement in code reviews:

* Prioritizing critical issues
* Providing specific, actionable feedback
* Suggesting concrete improvements with examples
* Checking for adherence to project conventions
* Verifying documentation accuracy
* Assessing test quality
* Identifying potential edge cases
* Looking for code smells and anti-patterns

Self-Review Checklist
~~~~~~~~~~~~~~~~~~~~~~~~~~

Pre-submission verification checklist:

* Compilation/execution without errors
* Appropriate test coverage
* Updated documentation
* Removal of debug statements
* Requirement completion
* Adherence to coding standards
* Security consideration
* Static analysis
* Clear PR description
* Issue references

Response Guidelines
~~~~~~~~~~~~~~~~~~~~~~~~

Standards for giving and receiving review feedback:

* Being specific about needed changes
* Explaining why changes are needed
* Distinguishing between required and suggested changes
* Providing positive feedback alongside criticism
* Asking questions rather than making accusations
* Responding to all comments
* Explaining reasoning when disagreeing
* Making changes promptly
* Requesting clarification when needed

Rationale
---------

The code review rules serve several essential purposes:

1. **Quality Improvement**: Catching issues early and improving code quality
2. **Knowledge Sharing**: Spreading knowledge and best practices among team members
3. **Consistency**: Ensuring consistent patterns and standards
4. **Collaboration**: Fostering productive team collaboration
5. **Learning**: Creating opportunities for mentoring and learning

By following these code review rules, teams can maintain high code quality while fostering a positive, collaborative development environment. 