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
    @State var storyRequest: String = ""
    @State var story: String = ""
    
    var body: some View {
        VStack {
            Text("My Story")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            TextField("What is your story...?", text: $storyRequest)
            
            Button("Write Story") {
                Task {
                    let response = try await fetchOpenAIResponse(prompt: storyRequest)
                    story = response ?? ""
                    print("STORY => \(story)")
                    storyRequest = ""
                }
                print("push button")
            }

            ScrollView {
                Text(story)
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
            
            Text("Hobbies")
                .font(.title2)
            
            HStack {
                ForEach(information.hobbies, id: \.self) { hobby in
                    Image(systemName: hobby)
                        .resizable()
                        .frame(maxWidth: 80, maxHeight: 60)
                    
                }
                .padding()
            }
            .padding()
            
            Text("Foods")
                .font(.title2)

            ScrollView(.horizontal) {
                HStack {
                    ForEach(information.foods, id: \.self) { food in
                        Text(food)
                            .font(.system(size: 48))
                        
                    }
                }
                .padding()
            }
            .padding()

            Text("Favorite Colors")
                .font(.title2)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(information.colors, id: \.self) { color in
                        color
                            .frame(width: 70, height: 70)
                            .cornerRadius(100)
                    }
                }
                .padding()
            }

        }
    }
}

struct FunFactsView: View {
    @State private var funFact: String = "Look at my fun fact"
    
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Text(funFact)
                .padding()
                .font(.body)
            
            Button("Show Random Fact") {
                funFact = information.funFacts.randomElement() ?? ""
            }
        }
    }
}


#Preview {
    ContentView()
}
