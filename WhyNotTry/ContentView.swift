//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Alvin Otuya on 09/10/2025.
//

import SwiftUI

struct ContentView: View {
    
    
   @State var selected = "Baseball"
    @State private var id = 1
    var activities = ["Archery","Bowling","Hiking","Boxing","Cycling","Rugby","Cricket","Baseball","Basketball","Fencing"]
    
    var colors: [Color] = [.red, .green, .blue, .orange, .purple, .pink]

    
    var body: some View {
        VStack {
            Text("Why Not Try")
                .font(.largeTitle.bold())
            
        }
        VStack {
            Circle()
                .fill(colors.randomElement() ?? .blue)
                .overlay(
                    Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                )
            Text("\(selected)!")
                .font(.title)
                .padding()
                .transition(.slide)
                .id(id)
        }
        Button("Try again") {
            withAnimation(.easeInOut(duration: 1)) {
                selected = activities.randomElement() ?? "Baseball"
                id += 1
            }
    }
        .buttonStyle(.borderedProminent)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

