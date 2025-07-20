//
//  ViewModifierBootcamp.swift
//  Swift Advanced Learning
//
//  Created by Ian   on 20/07/2025.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .frame(height: 100)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding()
            
    }
}

extension View {
    withdef


struct ViewModifierBootcamp: View {
    var body: some View {


        VStack {
            
            Text("Hello World!")
            .modifier(DefaultButtonViewModifier())
           
        }

    }
}

#Preview {
    ViewModifierBootcamp()
}
