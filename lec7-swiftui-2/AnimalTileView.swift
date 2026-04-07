//
//  AnimalTileView.swift
//  lec7-swiftui-2
//
//  Created by Zain Bilal on 4/6/26.
//

import SwiftUI

struct AnimalTileView: View {
    let animal: Animal

    var body: some View {
        HStack(spacing: 16) {
            Text(animal.emoji)
                .font(.system(size: 50))

            VStack(alignment: .leading, spacing: 4) {
                Text(animal.name)
                    .font(.title2.bold())

                Text(animal.species)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundStyle(.tertiary)
        }
        .padding()
    }
}

#Preview {
    AnimalTileView(animal: Animal.mockData[0])
        .padding()
}
