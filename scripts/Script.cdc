// Import FruitStruct Contract
import FruitStruct from 0x06

// Main function to retrieve a Fruit by its Id using the imported FruitStruct contract
pub fun main(id: UInt64): FruitStruct.Fruit? {
  return FruitStruct.getFruit(id: id)!  // Retrieve a Fruit from FruitStruct contract using its Id
}
