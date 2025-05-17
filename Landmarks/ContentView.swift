//
//  ContentView.swift
//  Landmarks
//
//  Created by AoiKobayashi on 2025/05/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundStyle(.purple)
                Text("Joushua Tree National Park")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
