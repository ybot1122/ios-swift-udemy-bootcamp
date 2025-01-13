//
//  ContentView.swift
//  HackerNews
//
//  Created by Toby Liu on 1/13/25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink {
                    DetailView(url: post.url)
                } label: {
                    HStack {
                        Text(String(post.points))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                        Text(post.title)
                    }

                }
                
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}
