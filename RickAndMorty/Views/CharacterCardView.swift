//
//  CharacterCardView.swift
//  RickAndMorty
//
//  Created by Ekomobong Edeme on 19/03/2024.
//

import SwiftUI

struct CharacterCardView: View {
    
    let character:CharacterModel
    
    var body: some View {
        ZStack {
            Color.secondary
            VStack(spacing:10){
                AsyncImage(url: URL(string: character.image)!) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    Text("Loading...")
                }

                
                
                Text("Name: \(character.name)")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text("Species:\(character.species)")
                    .font(.title3)
                    .fontWeight(.semibold)
            }
            .foregroundStyle(.white)
            .padding(.bottom)
        }
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .padding()
    }
}
#Preview {
    CharacterCardView(character: CharacterModel(id: 1, name: "Rick Sanchez", species: "Human", image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"))
}
