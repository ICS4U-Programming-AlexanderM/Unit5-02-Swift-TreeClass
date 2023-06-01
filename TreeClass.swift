import Foundation
//  Created by Alexander Matheson
//  Created on 2023-June-1
//  Version 1.0
//  Copyright (c) 2023 Alexander Matheson. All rights reserved.
//
//  This program contains a tree class.

// Tree class
class Tree {
  // Variables for class.
  var numLeaves: Int
  var feetTall: Int
  var age: Int
  var species: String

  // Constructor.
  init(leaves: Int, height: Int, type: String) {
    self.numLeaves = leaves
    self.feetTall = height
    self.species = type
    self.age = 0
  }

  // Grow function.
  func grow() {
    self.numLeaves += 10000
    self.feetTall += 5
    self.age += 1
  }

  // Overloaded growth.
  func grow(addLeaves: Int, addHeight: Int) {
    self.numLeaves += addLeaves
    self.feetTall += addHeight
    self.age += 1
  }

  // Slow growth.
  func growSlow() {
    self.numLeaves += 100
    self.feetTall += 1
    self.age += 1
  }

  // Lose all leaves.
  func loseLeaves() {
    self.numLeaves = 0
  }
}

// Create tree object.
let maple = Tree(leaves: 5000, height: 10, type: "Maple")

// Check if creation was successful.
print("Initial:")
print("Species:", maple.species)
print("Number of leaves:", maple.numLeaves)
print("Height in feet:", maple.feetTall)
print("Age:", maple.age)

// Grow tree.
print("After one growth: ")
maple.grow()
print("Species:", maple.species)
print("Number of leaves:", maple.numLeaves)
print("Height in feet:", maple.feetTall)
print("Age:", maple.age)

// Grow tree slowly.
print("After a slow growth: ")
maple.growSlow()
print("Species:", maple.species)
print("Number of leaves:", maple.numLeaves)
print("Height in feet:", maple.feetTall)
print("Age:", maple.age)

// Overloaded growth.
print("Add 7 feet and 9000 leaves: ")
maple.grow(addLeaves: 9000, addHeight: 7)
print("Species:", maple.species)
print("Number of leaves:", maple.numLeaves)
print("Height in feet:", maple.feetTall)
print("Age:", maple.age)

// Lose leaves
print("Winter is coming: ")
maple.loseLeaves()
print("Species:", maple.species)
print("Number of leaves:", maple.numLeaves)
print("Height in feet:", maple.feetTall)
print("Age:", maple.age)
