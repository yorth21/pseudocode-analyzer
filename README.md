# Pseudocode Analyzer

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Java Version](https://img.shields.io/badge/Java-11+-orange.svg)](https://www.oracle.com/java/)
[![Build Status](https://img.shields.io/badge/Build-Passing-brightgreen.svg)]()

A comprehensive lexical and syntactic analyzer for English pseudocode, built with JFlex and CUP. This project provides a complete toolkit for parsing, analyzing, and validating pseudocode written in standard academic English notation.

## 📋 Table of Contents

- [Features](#-features)
- [Quick Start](#-quick-start)
- [Supported Syntax](#-supported-syntax)
- [Examples](#-examples)
- [Project Structure](#-project-structure)
- [How It Works](#-how-it-works)
- [Contributing](#-contributing)
- [License](#-license)
- [Author](#-author)

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
    git clone https://github.com/yorth21/pseudocode-analyzer.git
    cd pseudocode-analyzer
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

Create a pseudocode file (`.txt`) and place it in `src/main/resources/`:

By default, the analyzer will process the file named `code.txt`. You can modify the path in `Main.java` if needed.

The analyzer will output:
- A "Done" message if parsing was successful
- A list of tokens found in the code
- Any syntax errors detected

## 📝 Supported Syntax

The analyzer supports a comprehensive set of pseudocode elements:

### Program Structure
- `Program` / `EndProgram` - Define the main program block
- `Function` / `EndFunction` - Define functions with optional return values

### Data Types
- `Integer` - Whole numbers
- `Real` - Floating-point numbers
- `String` - Text strings
- `Boolean` - True/False values
- `Character` - Single characters

### Control Structures
- **Conditionals**: `If-Then-Else-EndIf`
- **Loops**: 
  - `While-Do-EndWhile`
  - `For-To-Step-EndFor`
- **Selection**: `Switch-Case-Default/Otherwise-EndSwitch`

### Input/Output
- `Read` / `Input` - Read values from user
- `Write` / `Print` / `Output` - Display values to user

### Operators
- **Arithmetic**: `+`, `-`, `*`, `/`, `%`, `^`
- **Relational**: `==`, `!=`, `<`, `>`, `<=`, `>=`
- **Logical**: `And`, `Or`, `Not`
- **Assignment**: `=`

### Other Elements
- Comments (single-line `//` and multi-line `/* */`)
- Literals (integers, reals, strings)
- Identifiers (variable names)

## 📋 Examples

Here's a simple example of pseudocode that can be analyzed.

```
Program SumCalculator
    Integer result;
    result = calculateSum();
    Write "The sum is: ";
    Write result;
EndProgram
```

📄 [More examples...](example.md)

## 📁 Project Structure

- `src/main/jflex/lexer.flex` - JFlex specification for lexical analysis
- `src/main/cup/parser.cup` - CUP specification for syntactic analysis
- `src/main/java/com/yorth21/Main.java` - Main entry point
- `src/main/resources/` - Directory for pseudocode files

## ⚙️ How It Works

1. **Lexical Analysis**: The JFlex-generated lexer reads the input file and converts it into a stream of tokens.
2. **Syntactic Analysis**: The CUP-generated parser validates the token stream against the grammar rules.
3. **Error Reporting**: Detailed error messages are generated for any lexical or syntactic errors.

The project uses:
- **JFlex** (1.9.1) for lexical analysis
- **Java CUP** (11b-20160615) for parser generation

## 🤝 Contributing

Contributions are welcome! Here's how you can contribute:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature-name`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin feature/your-feature-name`
5. Submit a pull request

For major changes, please open an issue first to discuss what you would like to change.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👤 Author

- **Yorth Ortegon** - [yorth21](https://github.com/yorth21)

---

Made with ❤️ for pseudocode enthusiasts and computer science students
