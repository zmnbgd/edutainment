//
//  ContentView.swift
//  edutainment
//
//  Created by Marko Zivanovic on 5.3.25..
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstFactor = 1
    @State private var questionNumber = 1
    
    let firstFactors = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    var body: some View {
        ZStack {
            VStack {
                NavigationStack {
                        Form {
                            Section("Select first factor.") {
                                Picker("First factor", selection: $firstFactor) {
                                    ForEach(firstFactors, id: \.self) { factor in
                                        Text("\(factor)")
                                    }
                                }
                            }
                            
                            Section("How many questions do you choose?") {
                                Picker("Choose number of a question", selection: $questionNumber) {
                                    ForEach(1..<11) {
                                        Text("\($0)")
                                    }
                                }
                                .pickerStyle(.navigationLink)
                            }
                            
                            Section("Section 3.") {
                                
                            }
                        }
                        .navigationTitle("Edutainment")
                    }
            }
            HStack {
                
            }
        }


        }

    }

#Preview {
    ContentView()
}
