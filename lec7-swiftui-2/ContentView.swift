//
//  ContentView.swift
//  lec7-swiftui-2
//
//  Created by Zain Bilal on 4/6/26.
//

import SwiftUI

struct ContentView: View {

    @State private var animals: [Animal] = Animal.mockData

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(animals) { animal in
                        NavigationLink {
                            AnimalView(animal: animal)
                        } label: {
                            AnimalTileView(animal: animal)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding()
            }
            .navigationTitle("Animals")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        AddAnimalView(animals: $animals)
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
