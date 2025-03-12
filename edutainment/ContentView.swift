//
//  ContentView.swift
//  edutainment
//
//  Created by Marko Zivanovic on 5.3.25..
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstFactor = 1
    
    let firstFactors = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    var body: some View {
        NavigationStack {
                Form {
                    Section("Select first factor.") {
                        Picker("First factor", selection: $firstFactor) {
                            ForEach(firstFactors, id: \.self) { factor in
                                Text("\(factor)")
                            }
                        }
                    }
                    
                    Section("Section 2.") {
                        
                    }
                    
                    Section("Section 3.") {
                        
                    }
                }
                .navigationTitle("Game")
            }

        }

    }

#Preview {
    ContentView()
}
