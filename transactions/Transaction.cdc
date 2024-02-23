// Import FruitStruct Contract
import FruitStruct from 0x06

// Transaction to add a Fruit
transaction(id: UInt64, name: String, year: UInt64) {
    
    // Prepare function, executed before the transaction
    prepare(acct: AuthAccount) {}

    // Execute function, contains the main logic of the transaction
    execute {
      // Call the addFruit function from the FruitStruct Contract
      FruitStruct.addFruit(id: id, name: name, year: year)
      
      // Log a message indicating that the addition was successful
      log("Fruit added successfully")
    }
}
