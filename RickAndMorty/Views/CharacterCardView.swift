//
//  CharacterCardView.swift
//  RickAndMorty
//
//  Created by Ekomobong Edeme on 19/03/2024.
//

import SwiftUI

struct CharacterCardView: View {
    
    let characterName:String
    let characterSpecies:String
    let imageName:String
    
    var body: some View {
        ZStack {
            Color.secondary
            VStack(spacing:10){
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                Text("Name: \(characterName)")
                    .font(.title3)
                Text("Species:\(characterSpecies)")
                    .font(.title3)
            }
            .foregroundStyle(.white)
            .padding(.bottom)
        }
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .padding()
    }
}
#Preview {
    CharacterCardView(characterName: "Rick", characterSpecies: "Human", imageName: "rick")
}
