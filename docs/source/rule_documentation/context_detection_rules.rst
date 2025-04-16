=========================
Context Detection Rules
=========================

Guidelines for context detection and management patterns.

File: `context-detection-rules.mdc`

Purpose
-------

The Context Detection Rules establish patterns and strategies for identifying, extracting, and managing context within code. These rules help in creating systems that can effectively understand and utilize code context for enhanced functionality.

Key Principles
--------------

* **Multi-level Context**: Recognizing different types of context (project, file, function, etc.)
* **Pattern Recognition**: Using effective patterns to identify context information
* **Structured Storage**: Organizing context data in efficient, queryable formats
* **Relationship Tracking**: Maintaining connections between related context elements
* **AI-Optimized Patterns**: Designing context patterns that work well with AI systems

Detailed Contents
-----------------

Context Types
~~~~~~~~~~~~~~~~~~

Categories of context that can be detected and managed:

* Project context (structure, architecture, design patterns)
* File context (content, purpose, relationships)
* Function context (purpose, inputs, outputs, behavior)
* Variable context (meaning, scope, usage)
* Execution context (runtime state, environment, configuration)

Detection Strategies
~~~~~~~~~~~~~~~~~~~~~~~~~

Approaches for detecting and extracting context:

* Regular expression pattern matching for code structures
* Abstract Syntax Tree (AST) parsing for detailed analysis
* Vector embeddings for semantic similarity search
* File path and naming convention analysis
* Content-based fingerprinting for identification

Context Storage
~~~~~~~~~~~~~~~~~~~~

Methods for storing and organizing context information:

* Structured database storage (SQLite, etc.)
* JSON format for complex context data
* Reference tables for relationship management
* Versioning mechanisms for tracking changes
* Efficient indexing for fast retrieval

Context Patterns
~~~~~~~~~~~~~~~~~~~~~

Standard patterns for detecting common code elements:

* Import pattern detection for module dependencies
* Function definition pattern for identifying functions and methods
* Class definition pattern for identifying classes
* Variable assignment pattern for tracking variable usage
* Code structure patterns for identifying relationships

Context Extraction
~~~~~~~~~~~~~~~~~~~~~~~

Guidelines for extracting useful context:

* Incremental extraction during code analysis
* Prioritizing docstrings and comments for intent
* Analyzing function parameters and return types
* Identifying variable usage patterns
* Tracking dependencies between code elements

Context Retrieval
~~~~~~~~~~~~~~~~~~~~~~

Standards for effectively retrieving context:

* Relevance scoring for search results
* Semantic similarity for fuzzy matching
* Prioritization of recent and frequent context
* Code proximity consideration for relevance
* Performance optimization through caching

AI-Optimized Context
~~~~~~~~~~~~~~~~~~~~~~~~~

Patterns specifically designed for AI understanding:

* AI-recognizable context patterns
* Hierarchical context structure
* Consistent naming patterns
* Semantic markers for boundaries
* Explicit relationship indicators
* Standardized templates for common patterns
* Confidence scoring for extracted context

Rationale
---------

The context detection rules serve several essential purposes:

1. **Understanding**: Enhancing comprehension of code structure and purpose
2. **Navigation**: Improving ability to navigate complex codebases
3. **Assistance**: Supporting more effective AI assistance
4. **Automation**: Enabling automated code analysis and transformation
5. **Documentation**: Supporting automatic documentation generation

By following these context detection rules, systems can better understand code context, leading to improved code analysis, navigation, and AI assistance capabilities. 