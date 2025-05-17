//
//  ContentView.swift
//  Landmarks
//
//  Created by AoiKobayashi on 2025/05/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
                .foregroundStyle(.purple)
            HStack {
                Text("Joushua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
