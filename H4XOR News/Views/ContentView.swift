//
//  ContentView.swift
//  H4XOR News
//
//  Created by Mohammad on 5/16/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { Post in
                NavigationLink(
                    destination: DetailView(url: Post.url),
                    label: {
                        HStack {
                            Text(String(Post.points))
                            Text(Post.title)
                        }
                    })
            }
            .navigationTitle("Hacker News")
        }
        .onAppear(perform: {
            self.networkManager.fetchdata()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
