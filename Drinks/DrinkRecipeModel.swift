//
//  DrinkRecipeModel.swift
//  Drinks
//
//  Created by Łukasz Adamczak on 15/03/2025.
//

import Foundation

struct DrinkRecipeModel: Codable {
    var name: String
    var description: String
    var Category: String // alcohol, freealcohol, coctail, beer, coctailWithoutAlcohol
    var ingredients: [String]
    
    init(name: String, description: String, Category: String, ingradients: [String]) {
        self.name = name
        self.description = description
        self.Category = Category
        self.ingredients = ingradients
    }
    
    enum Category: String, CaseIterable {
        case alcohol = "Alcohol"
        case freeAlcohol = "Free Alcohol"
        case coctail = "Coctail"
        case coctailWhitoutAlcohol = "Cocatil without Alcohol"
        case beer = "Beer"
        case coffee = "Coffee"
    }
}

struct Ingradients {
    var name: String
    var quantity: Double
    var unit: Unit // ml
    
    init(name: String, quantity: Double, unit: Unit) {
        self.name = name
        self.quantity = quantity
        self.unit = unit
    }
    
    enum Unit: String, CaseIterable {
        case cup = "cup"
        case ml = "ml"
        case l = "L"
        case g = "g"
        case smallTeaSpoon = "smallTeaSpoon"
        case none = "No Units"
    }
}
