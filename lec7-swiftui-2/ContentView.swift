//
//  ContentView.swift
//  lec7-swiftui-2
//
//  Created by Zain Bilal on 4/6/26.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(Animal.mockData) { animal in
                    AnimalTileView(animal: animal)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
