//
//  ContentView.swift
//  makers-workshop
//
//  Created by Steve Alex  on 27/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                 .tabItem {
                     Label("Home", systemImage: "person")
                 }
            
            StoryView()
                .tabItem {
                    Label("Story", systemImage: "book")
                }
            
            FavouritesView()
                .tabItem {
                    Label("Favourites", systemImage: "star")
                }
            
            FunFactsView()
                .tabItem {
                    Label("Fun facts", systemImage: "hand.thumbsup")
                }
        }
    }
}


struct HomeView: View {
    var body: some View {
        VStack {
            Text("All About")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Image(information.image)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(40)
            
            Text(information.name)
                .font(.title)
        }
    }
}

struct StoryView: View {
    var body: some View {
        VStack {
            Text("My Story")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            ScrollView {
                Text(information.story)
                    .font(.body)
                    .padding()
            }
        }
    }
}

struct FavouritesView: View {
    var body: some View {
        VStack {
            Text("Favourites")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            HStack {
                ForEach(information.hobbies, id: \.self) { hobby in
                    Image(systemName: hobby)
                        .resizable()
                        .frame(maxWidth: 80, maxHeight: 60)
                    
                }
            }
        }
    }
}

struct FunFactsView: View {
    var body: some View {
        Text("Fun facts View")
    }
}


#Preview {
    ContentView()
}
