//
//  ContentView.swift
//  TobyCardTwo
//
//  Created by Toby Liu on 1/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("me_cropped")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Hello, world!")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundStyle(.white)
                    .font(.system(size: 25))
                Divider()
                PhoneNumber(
                    text: "+1 123 456 1239",
                    imageName: "phone.fill"
                )
                PhoneNumber(
                    text: "toby@toby.com",
                    imageName: "envelope.fill"
                )

            }
        }
    }
}

#Preview {
    ContentView()
}
