//
//  CharacterViewModel.swift
//  RickAndMorty
//
//  Created by Ekomobong Edeme on 19/03/2024.
//

import Foundation

class CharacterViewModel:ObservableObject{
    @Published var allCharacters: [CharacterModel] = []
    
    init() {
        Task{
          await  getAllCharacters()
        }
    }
    
    func getAllCharacters()async{
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else { return }
        do{
            let (data, response) = try await URLSession.shared.data(from: url)
            let decodedCharacters = try JSONDecoder().decode([CharacterModel].self, from: data)
            allCharacters = decodedCharacters
        }catch{
            print("Error fetching the characters: \(error)")
        }
    }
}
