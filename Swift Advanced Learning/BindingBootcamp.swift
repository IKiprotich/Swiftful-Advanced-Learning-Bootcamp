//
//  BindingBootcamp.swift
//  Swift Advanced Learning
//
//  Created by Ian   on 20/07/2025.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = Color.blue
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Change Background") {
                backgroundColor = Color.random()
                title = "Background Changed!"
            }
            .foregroundColor(.white)
            .padding()
            .background(buttonColor)
            .cornerRadius(10)
            
            Button("Change Button Color") {
                buttonColor = Color.random()
                title = "Button Color Changed!"
            }
            .foregroundColor(.white)
            .padding()
            .background(buttonColor)
            .cornerRadius(10)
        }
    }
}

extension Color {
    static func random() -> Color {
        let colors: [Color] = [.red, .blue, .purple, .orange, .pink, .yellow]
        return colors.randomElement() ?? .green
    }
}

#Preview {
    BindingBootcamp()
} 