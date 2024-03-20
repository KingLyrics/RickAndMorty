//
//  CharacterDetailView.swift
//  RickAndMorty
//
//  Created by Ekomobong Edeme on 19/03/2024.
//

import SwiftUI

struct CharacterDetailView: View {
    let character:CharacterModel
    @Environment(\.dismiss) var dismiss

    var body: some View {
        
        VStack(spacing: 10) {
            HStack{
                Spacer()
                Button(action: {
                    dismiss()
                }, label: {
                    Text("Dismiss")
                })
            }
           Spacer()
            
            AsyncImage(url: URL(string: character.image)!) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width:300)
            } placeholder: {
                Text("Loading...")
            }
            Text("Name: \(character.name)")
                .font(.title)
                .fontWeight(.semibold)
            HStack {
                Text("Status:")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(character.status)
                .foregroundStyle(character.statusColor)
                .font(.title)
            }
            Text("Gender: \(character.gender)")
                .font(.title)
            Spacer()
        }
        .padding(.top,10)
        .padding()
    
        Spacer()
    }
}

#Preview {
    CharacterDetailView(character: CharacterModel(id: 10, name: "Rick Sanchez", status: "Alive", gender: "Male", origin: CharacterModel.Origin(name: "Earth"), species: "Human", image: "https://rickandmortyapi.com/api/character/avatar/2.jpeg"))
}
