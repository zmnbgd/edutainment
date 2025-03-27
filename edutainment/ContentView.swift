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
    @State private var secondFactor = 0
    @State private var correctAnswer = 0
    @State private var score = 0
    
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
                    Text("How much is \(selectedTable) x \(secondFactor)")
                }
                
                //MARK: - User Answer
                Section("User Answer") {
                    TextField("Enter your result here...", text: $userAnswer)
                }
                
                //MARK: - Submit Answer Button
                Button("Submit answer") {
                    checkAnswer()
                }
                .foregroundStyle(.red)
                
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
        secondFactor = Int.random(in: 2...10)
        correctAnswer = selectedTable * secondFactor
        userAnswer = ""
    }
    
    //MARK: - Check Answer Method
    func checkAnswer() {
        if let userResult = Int(userAnswer) {
            if userResult == correctAnswer {
                score += 1
            } else {
                score -= 1
            }
        }
    }
}

#Preview {
    ContentView()
}

