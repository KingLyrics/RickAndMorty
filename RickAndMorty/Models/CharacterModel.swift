//
//  CharacterModel.swift
//  RickAndMorty
//
//  Created by Ekomobong Edeme on 19/03/2024.
//

import Foundation

struct CharacterResponse:Decodable {
    let results: [CharacterModel]
}

struct CharacterModel: Decodable, Identifiable {
    var id:Int
    let name: String
    let species: String
    let image:String
    
}


