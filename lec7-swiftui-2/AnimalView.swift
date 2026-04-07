//
//  AnimalView.swift
//  lec7-swiftui-2
//
//  Created by Zain Bilal on 4/6/26.
//

import SwiftUI

struct AnimalView: View {

    let animal: Animal

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {

                Text(animal.emoji)
                    .font(.system(size: 120))

                Text(animal.species)
                    .font(.title3)
                    .foregroundStyle(.secondary)

                Text(animal.funFact)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.indigo.opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .navigationTitle(animal.name)
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    AnimalView(animal: Animal.mockData[0])
}
