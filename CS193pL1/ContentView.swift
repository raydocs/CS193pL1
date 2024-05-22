//
//  ContentView.swift
//  CS193pL1
//
//  Created by Ruirui Wan on 5/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView()
            CardView()
        }
        .padding()
        .foregroundStyle(.orange)
    }
}

struct CardView: View {
    var isFaceUp = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
        
    }
}
#Preview {
    ContentView()
}
