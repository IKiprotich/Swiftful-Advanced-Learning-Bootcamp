//
//  StateBootcamp.swift
//  Swift Advanced Learning
//
//  Created by Ian   on 20/07/2025.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                    .foregroundColor(.white)
                
                Text("Count: \(count)")
                    .font(.headline)
                    .foregroundColor(.white)
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed!"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed!"
                        count -= 1
                    }
                }
                
                Button("Reset") {
                    backgroundColor = .green
                    myTitle = "My Title"
                    count = 0
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
            }
        }
    }
}

#Preview {
    StateBootcamp()
} 