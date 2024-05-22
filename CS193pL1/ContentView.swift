//
//  ContentView.swift
//  CS193pL1
//
//  Created by Ruirui Wan on 5/7/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻","🧛🏿‍♂️","🦑","🐕"]
    
    var body: some View {
        HStack{
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
            
        }
        .padding()
        .foregroundStyle(.orange)
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
#Preview {
    ContentView()
}
        
