//
//  ContentView.swift
//  edutainment
//
//  Created by Marko Zivanovic on 5.3.25..
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTable = 2
    @State private var numberOfQuestion = 5
    
    let numberOfQuestions = [5, 10, 20]
    
    var body: some View {
        NavigationStack {
            Form {
                //MARK: - Select First Factor
                Section("Select multiplication table") {
                    Stepper(value: $selectedTable, in: 2...10) {
                        Text("Multiply \(selectedTable)")
                    }
                }
            }
            .navigationTitle("Edutainment")
        }
    }
}

#Preview {
    ContentView()
}

