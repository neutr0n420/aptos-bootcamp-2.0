# Aptos Move Data Types Repository

A comprehensive guide and reference for Aptos Move programming language data types, from basic to intermediate level.

## Overview

This repository provides examples, explanations, and best practices for working with core data types in the Aptos Move programming language. It serves as both a learning resource and reference guide for developers building on the Aptos blockchain.

## Data Types Covered

### 1. Integers

Move supports various integer types with different bit widths:

- `u8`: 8-bit unsigned integer
- `u16`: 16-bit unsigned integer (since Aptos Move v1.5)
- `u32`: 32-bit unsigned integer
- `u64`: 64-bit unsigned integer
- `u128`: 128-bit unsigned integer
- `u256`: 256-bit unsigned integer


### 2. Functions

Functions are the building blocks of Move modules:

- Function declaration syntax
- Public vs private functions
- Entry functions
- Function visibility modifiers

### 3. Modules

Modules are the primary organizational unit in Move:

- Module structure and syntax

### 4. Signers

Signers represent authenticated accounts in Aptos Move:

- Working with signer references
- Authentication and authorization
- Permission control using signers

### 5. References

Move has a sophisticated reference system for safe memory access:

- Mutable references (`&mut`)
- Reference borrowing rules
- Reference safety principles

### 6. Vectors

Vectors are the primary collection type in Move:

- Vector creation and initialization
- Adding, removing, and accessing elements
- Vector iteration patterns
- Memory management with vectors
- Vector performance considerations
- Common vector operations

### 7. Structs and Resources

Structs and resources are the foundational data structures in Move:

- Struct declaration and initialization
- Resource structs with the `key` ability
- Struct abilities: `copy`, `drop`, `store`, `key`
- Creating, accessing, and modifying resources
- Ownership and borrowing rules
- Resource management patterns

### 8. Module Events

Events allow off-chain applications to track on-chain state changes:

- Event declaration
- Emitting events
- Event structures
- Event handling best practices
- Indexing and filtering events
- Event-driven architecture patterns

## Getting Started

### Prerequisites

- [Aptos CLI](https://aptos.dev/cli-tools/aptos-cli-tool/install-aptos-cli/)
- Basic understanding of blockchain concepts
- Familiarity with programming concepts

### Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/aptos-move-datatypes.git

# Navigate to the repository
cd aptos-move-datatypes

# Explore the examples
```

## Repository Structure

```
/
├── integers/                  # Integer examples and tutorials
├── functions/                 # Function examples and best practices
├── modules/                   # Module structure and organization examples
├── signers/                   # Signer usage examples
├── references/                # Reference tutorials and safety patterns
├── vectors/                   # Vector manipulation examples
├── structs-resources/         # Struct and resource patterns
├── module-events/             # Event declaration and emission examples
```

## Usage Examples

Each data type directory contains:
- README with conceptual explanations
- Basic examples
- Advanced patterns
- Common pitfalls and solutions
- Best practices

## Contributing

Contributions are welcome! Please feel free to submit a pull request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Resources

- [Official Aptos Documentation](https://aptos.dev/move/move-on-aptos)
- [Move Book](https://move-language.github.io/move/)
- [Aptos Framework](https://github.com/aptos-labs/aptos-core/tree/main/aptos-move/framework)

## License

This project is licensed under the MIT License - see the LICENSE file for details.
