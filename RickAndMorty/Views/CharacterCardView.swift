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

                VStack(alignment:.leading) {
                    Text("Name: \(character.name)")
                        .font(.subheadline)
                    .fontWeight(.semibold)
                    Text("Species:\(character.species)")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
             
            }
            .foregroundStyle(.white)
            .padding(.bottom)
      
        }
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .padding()
    }
}
#Preview {
    CharacterCardView(character: CharacterModel(id: 10, name: "Rick Sanchez", status: "Alive", gender: "Male", origin: CharacterModel.Origin(name: "Earth"), species: "Human", image: "https://rickandmortyapi.com/api/character/avatar/2.jpeg"))
}
