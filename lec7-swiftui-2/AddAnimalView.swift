//
//  AddAnimalView.swift
//  lec7-swiftui-2
//
//  Created by Zain Bilal on 4/6/26.
//

import SwiftUI

struct AddAnimalView: View {

    var body: some View {
        Form {
            Section("Animal Info") {
                TextField("Name", text: .constant(""))
                TextField("Emoji", text: .constant(""))
                TextField("Species", text: .constant(""))
                TextField("Fun Fact", text: .constant(""))
            }

            Section {
                Button("Add Animal") {
                    
                }
            }
        }
    }
}

#Preview {
    AddAnimalView()
}
