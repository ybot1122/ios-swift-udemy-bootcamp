//
//  ContentView.swift
//  Dicee-swiftui
//
//  Created by Toby Liu on 1/12/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action:{
                    leftDiceNumber = Int.random(in: (1...6))
                    rightDiceNumber = Int.random(in: (1...6))
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .foregroundStyle(.white)
                        .fontWeight(.heavy)
                        .padding(.horizontal)
                }
                .background(Color.red)
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
