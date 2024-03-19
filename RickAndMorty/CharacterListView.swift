//
//  CharacterListView.swift
//  RickAndMorty
//
//  Created by Ekomobong Edeme on 19/03/2024.
//

import SwiftUI

struct CharacterListView: View {
    @StateObject var characterViewModel  = CharacterViewModel()
    @State var isShowing = false
    @State var selectedCharacter:CharacterModel? = nil
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(characterViewModel.allCharacters){character in
                        CharacterCardView(character: character)
                            .onTapGesture {
                                selectedCharacter = character
                        }
                            .sheet(item: $selectedCharacter) { character in
                                CharacterDetailView(character: character)
                            }
                    }
                }
            }
            .navigationTitle("Rick and Morty")
        }
    }
}



#Preview {
    CharacterListView()
}
