//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Ekomobong Edeme on 19/03/2024.
//

import SwiftUI

struct ContentView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]	
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns) {
                    CharacterCardView(characterName: "Rick", characterSpecies: "Human", imageName: "rick")                }
            }
            .navigationTitle("Rick and Morty")
        }
        
       
    }
}

#Preview {
    ContentView()
}


