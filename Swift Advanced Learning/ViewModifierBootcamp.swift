//
//  ViewModifierBootcamp.swift
//  Swift Advanced Learning
//
//  Created by Ian   on 20/07/2025.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    let backgroundColor: Color
    
    init(backgroundColor: Color = .blue) {
        self.backgroundColor = backgroundColor
    }
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .frame(height: 100)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
    }
}

extension View {
    func defaultButtonStyle() -> some View {
        modifier(DefaultButtonViewModifier())
    }


struct ViewModifierBootcamp: View {
    var body: some View {


        VStack(spacing: 20) {
            
            Text("Hello World!")
                .defaultButtonStyle()
            
            Text("Custom Color Button")
                .modifier(DefaultButtonViewModifier(backgroundColor: .red))
           
        }

    }
}

#Preview {
    ViewModifierBootcamp()
}
