# Struct-Project

This FruitStruct is a smart contract project, developed in Cadence that showcases the implementation of structs and dictionaries. It provides a straightforward way to add fruits and retrieve them using their unique IDs.

## Requirements

Flow Playground
Cadence Language


### Usage

Create your Contract, Transaction, and Script files using Flow Playground.
Deploy the contract on the Flow blockchain.
Use the transaction to add a fruit by providing its ID, name, and year.
Utilize the script to retrieve fruit information using its ID.


### Contract Structure
The main contract, FruitStruct, defines a structure called Fruit, representing individual fruits with unique identifiers, names, and introduction years. Fruits are stored in a dictionary using their IDs as keys, allowing for efficient retrieval.

// FruitStruct Contract

// Define the structure for a Fruit
pub struct Fruit {
    pub let id: UInt64    // Unique identifier for the fruit
    pub let name: String  // Name of the fruit
    pub let year: UInt64  // Year when the fruit was introduced or discovered

    // Constructor for creating a Fruit
    init(id: UInt64, name: String, year: UInt64) {
        self.id = id
        self.name = name
        self.year = year
    }
}

// Main contract for managing fruits
pub contract FruitStruct {

    // Store fruits using their Id as keys in a dictionary
    pub var fruits: {UInt64: Fruit}

    // Initialize the contract with an empty fruits dictionary
    init() {
        self.fruits = {}
    }

    // Add a Fruit to the dictionary using its Id as the key
    pub fun addFruit(id: UInt64, name: String, year: UInt64) {
        let fruit = Fruit(id: id, name: name, year: year)
        self.fruits[id] = fruit
    }

    // Retrieve a Fruit by its Id from the dictionary
    pub fun getFruit(id: UInt64): Fruit? {
        return self.fruits[id]
    }
}

### Author
Created by [Oluwale Abiodun](https://github.com/Abbey46).

### License
This project is licensed under the [MIT License](LICENSE).