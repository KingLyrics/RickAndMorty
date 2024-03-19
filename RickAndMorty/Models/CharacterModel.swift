//
//  CharacterModel.swift
//  RickAndMorty
//
//  Created by Ekomobong Edeme on 19/03/2024.
//

import Foundation
import SwiftUI

struct CharacterResponse:Decodable {
    let results: [CharacterModel]
}

struct CharacterModel: Decodable, Identifiable {
    let id: Int 
    let name: String
    let status:String
    let gender:String
    let origin:Origin
    let species: String
    let image:String
    
    struct Origin:Decodable{
        let name:String
    }
    
    var statusColor: Color {
        switch status {
        case "Alive":
            return .green
        case "Dead":
            return .red
        default:
            return .gray
        }
    }
    

}


