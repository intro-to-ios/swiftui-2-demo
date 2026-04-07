//
//  AddAnimalView.swift
//  lec7-swiftui-2
//
//  Created by Zain Bilal on 4/6/26.
//

import SwiftUI

struct AddAnimalView: View {

    @Binding var animals: [Animal]
    @Environment(\.dismiss) private var dismiss

    @State private var name = ""
    @State private var emoji = ""
    @State private var species = ""
    @State private var funFact = ""

    var body: some View {
        Form {
            Section("Animal Info") {
                TextField("Name", text: $name)
                TextField("Emoji", text: $emoji)
                TextField("Species", text: $species)
                TextField("Fun Fact", text: $funFact)
            }

            Section {
                Button("Add Animal") {
                    let animal = Animal(
                        name: name,
                        emoji: emoji,
                        species: species,
                        funFact: funFact
                    )
                    animals.append(animal)
                    dismiss()
                }
                .disabled(name.isEmpty || species.isEmpty || funFact.isEmpty)
            }
        }
        .navigationTitle("New Animal")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        AddAnimalView(animals: .constant([]))
    }
}
