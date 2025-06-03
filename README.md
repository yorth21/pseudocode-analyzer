# PseudocodeAnalyzer

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Java Version](https://img.shields.io/badge/Java-11+-orange.svg)](https://www.oracle.com/java/)
[![Build Status](https://img.shields.io/badge/Build-Passing-brightgreen.svg)]()

A comprehensive lexical and syntactic analyzer for English pseudocode, built with JFlex and CUP. This project provides a complete toolkit for parsing, analyzing, and validating pseudocode written in standard academic English notation.

## 🎯 Features

- **Complete Lexical Analysis**: Tokenizes pseudocode keywords, identifiers, literals, and operators
- **Syntactic Parsing**: Validates pseudocode structure according to academic standards
- **Error Detection**: Provides detailed error messages for syntax and lexical errors
- **Multiple Input Formats**: Supports various pseudocode styles and conventions
- **Extensible Grammar**: Easy to extend for additional pseudocode constructs
- **Academic Standard**: Follows widely accepted pseudocode conventions

## 🚀 Quick Start

### Prerequisites

- Java 11 or higher
- Maven 3.6 or higher

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yorth21/PseudocodeAnalyzer.git
    cd PseudocodeAnalyzer
   ```

2. Build the project:
    ```bash
    mvn clean compile
   ```

3. Run the analyzer:
    ```bash
    mvn exec:java -Dexec.mainClass="com.yorth21.Main"
    ```

### Basic Usage

Create a pseudocode file (`.pseudo`) and place it in `src/main/resources/`:
