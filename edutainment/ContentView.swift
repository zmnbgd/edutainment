//
//  ContentView.swift
//  edutainment
//
//  Created by Marko Zivanovic on 5.3.25..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
            }
            .navigationTitle("Game")
            .edgesIgnoringSafeArea(.all)
        }

    }
}

#Preview {
    ContentView()
}
