# Vistex Development Style Guide

# Introduction
This style guide outlines the coding conventions for ABAP code developed at Vistex.
It's based on ABAP Language in SAP, but with some modifications to address specific needs and preferences within our organization.

# Key Principles
* **Readability:** Code should be easy for all team members to understand.
* **Maintainability:** Code should be easy to modify and extend.
* **Consistency:** Adhering to a consistent style across all projects improves   collaboration and reduces errors.
* **Performance:** While readability is paramount, code should be efficient.

## Line Length
* **Maximum line length:** 100 characters.
    * Modern screens allow for wider lines, improving code readability in many cases.
    * Many common patterns in our codebase, like long strings or URLs, often exceed 79 characters.

## Review Guidelines
* **Warning:**
    * Ensure that unused variables are removed to enhance code readability and maintainability
    * Ensure that exceptions are properly handled to improve the robustness and error management in the code.
* **Errors:**
    * Ensure that the field-symbol is verified for assignment before use in the code.
    * Ensure that a TRY-CATCH block is implemented around the SELECT query to handle potential exceptions and improve error handling.
    * Ensure that the WHERE clause is not placed last in the SELECT query, and the INTO clause should be positioned at the end.
    * Ensure that the new ABAP syntax is followed for better readability and compatibility with modern standards.
    * Ensure that inline READ statements include the OPTIONAL keyword where applicable to prevent runtime errors when a key is not found.

  
