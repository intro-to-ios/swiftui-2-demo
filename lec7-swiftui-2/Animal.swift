//
//  Animal.swift
//  lec7-swiftui-2
//
//  Created by Zain Bilal on 4/6/26.
//

import Foundation

struct Animal: Identifiable {
    let id = UUID()
    let name: String
    let emoji: String
    let species: String
    var funFact: String

    static var mockData: [Animal] = [
        Animal(name: "Dog", emoji: "🐕", species: "Canis lupus familiaris",
               funFact: "Dogs can understand up to 250 words and gestures."),
        Animal(name: "Cat", emoji: "🐈", species: "Felis catus",
               funFact: "Cats spend 70% of their lives sleeping."),
        Animal(name: "Penguin", emoji: "🐧", species: "Spheniscidae",
               funFact: "Penguins propose to their mates with a pebble."),
        Animal(name: "Owl", emoji: "🦉", species: "Strigiformes",
               funFact: "Owls can rotate their heads 270 degrees."),
        Animal(name: "Dolphin", emoji: "🐬", species: "Delphinidae",
               funFact: "Dolphins sleep with one eye open."),
        Animal(name: "Fox", emoji: "🦊", species: "Vulpes vulpes",
               funFact: "Foxes use Earth's magnetic field to hunt prey."),
        Animal(name: "Panda", emoji: "🐼", species: "Ailuropoda melanoleuca",
               funFact: "Pandas spend about 12 hours a day eating bamboo."),
        Animal(name: "Octopus", emoji: "🐙", species: "Octopoda",
               funFact: "Octopuses have three hearts and blue blood."),
    ]
}
