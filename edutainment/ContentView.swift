//
//  ContentView.swift
//  edutainment
//
//  Created by Marko Zivanovic on 5.3.25..
//

import SwiftUI

struct ContentView: View {
    
//    @State private var firstFactor = 1
//    @State private var secondFactor = 1
//    @State private var product: Int?
//    @State private var questionNumber = 1
//    
//    @State private var questions = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//    
//    @State private var correctAnswer = Int.random(in: 0...2)
//    
//    let firstFactors = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    @State private var secondFactor = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var score = 0
    @State private var showScore = false
    
    var body: some View {
//        ZStack {
//            VStack {
//                NavigationStack {
//                    Form {
//                        Section("Select first factor.") {
//                            Picker("First factor", selection: $firstFactor) {
//                                ForEach(firstFactors, id: \.self) { factor in
//                                    Text("\(factor)")
//                                }
//                            }
//                        }
//                        
//                        Section("How many questions do you choose?") {
//                            Picker("Choose number of a question", selection: $questionNumber) {
//                                ForEach(1..<11) {
//                                    Text("\($0)")
//                                }
//                            }
//                            .pickerStyle(.navigationLink)
//                        }
//                        
//                        Section("Section 3.") {
//                            
//                        }
//                    }
//                    .navigationTitle("Edutainment")
//                }
//            }
//            VStack() {
//                Text("How much is it?")
//                HStack(spacing: 20) {
//                    ForEach(0..<3) { number in
//                        Button(action: {
//                            print("Button \(number) tapped.")
//                        }) {
//                            Text("\(number + 1)")
//                                .font(.title)
//                                .foregroundColor(.white)
//                                .frame(width: 60, height: 60) // Postavlja dimenzije dugmeta
//                                .background(Circle().fill(number == correctAnswer ? Color.green : Color.blue))
//                        }
//                    }
//                }
////                .clipShape(Circle())
//            }
//        }
        
        //MARK: - Simple Example
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            VStack {
                Text("How much is 2 * 2?")
                    .font(.title.bold())
                    .foregroundColor(.white)
                VStack(spacing: 50) {
                    VStack {
                        Spacer()
                        Text("What is the correct answer?")
                            .font(.title.bold())
                            .foregroundColor(.white)
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            correctAnswerTapped(number)
                        } label: {
                            
                        }
                    }
                }
            }
        }


        
        
        
        
        
        
        
        
        
    }
    
    
//    func multiplicationResult(firstNumber: Int, secondNumber: Int) -> Int? {
//        
//        return product
//    }
    
    func correctAnswerTapped(_ number: Int) {
        if number == correctAnswer {
            score += 1
        }
        
        if number != correctAnswer {
            score -= 1
        }
        
        showScore = true
    }
    
    
}

#Preview {
    ContentView()
}
