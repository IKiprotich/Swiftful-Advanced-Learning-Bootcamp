//
//  ObservableObjectBootcamp.swift
//  Swift Advanced Learning
//
//  Created by Ian   on 20/07/2025.
//

import SwiftUI

class CounterViewModel: ObservableObject {
    @Published var count: Int = 0
    @Published var isPremium: Bool = false
    
    func increment() {
        count += 1
    }
    
    func decrement() {
        count -= 1
    }
    
    func reset() {
        count = 0
    }
    
    func togglePremium() {
        isPremium.toggle()
    }
}

struct ObservableObjectBootcamp: View {
    
    @StateObject private var viewModel = CounterViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Counter: \(viewModel.count)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Premium: \(viewModel.isPremium ? "Yes" : "No")")
                    .font(.headline)
                    .foregroundColor(viewModel.isPremium ? .green : .red)
                
                HStack(spacing: 20) {
                    Button("Increment") {
                        viewModel.increment()
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    Button("Decrement") {
                        viewModel.decrement()
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                }
                
                Button("Reset") {
                    viewModel.reset()
                }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
                
                Button("Toggle Premium") {
                    viewModel.togglePremium()
                }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(10)
                
                NavigationLink("Go to Detail View") {
                    DetailView(viewModel: viewModel)
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
                .cornerRadius(10)
            }
            .padding()
            .navigationTitle("Observable Object")
        }
    }
}

struct DetailView: View {
    @ObservedObject var viewModel: CounterViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Detail View")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Counter: \(viewModel.count)")
                .font(.largeTitle)
            
            Text("Premium Status: \(viewModel.isPremium ? "Active" : "Inactive")")
                .font(.headline)
                .foregroundColor(viewModel.isPremium ? .green : .red)
            
            Button("Increment from Detail") {
                viewModel.increment()
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            
            Text("Changes made here will reflect in the parent view!")
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding()
        }
        .padding()
        .navigationTitle("Detail")
    }
}

#Preview {
    ObservableObjectBootcamp()
} 