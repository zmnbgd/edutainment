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
    
    @State private var userAnswer = ""
    
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
                
                //MARK: Select Number Of Questions
                Section("Select number of questions") {
                    Picker("Questions number", selection: $numberOfQuestion) {
                        ForEach(numberOfQuestions, id: \.self) { number in
                            Text("\(number)")
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                // MARK: - Question
                Section("Question") {
                    Text("How much is \(selectedTable) x \(selectedTable)")
                }
                
                //MARK: - User Answer
                Section("User Answer") {
                    TextField("Enter your result here...", text: $userAnswer)
                }
                
            }
            .navigationTitle("Edutainment")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: startGame) {
                        Text("Start Game")
                    }
                }
            }
        }
    }
    
    //MARK: - Start Game Method
    func startGame() {
        
    }
}

#Preview {
    ContentView()
}

