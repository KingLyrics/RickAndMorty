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
        Task {
           try await getAllCharacters()
        }
    }
    
   private let baseUrl:String = "https://rickandmortyapi.com/api/character"
    func getAllCharacters() async throws {
        guard let url = URL(string: baseUrl) else {
            throw URLError.invalidUrl
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoder = JSONDecoder()
        
        let response = try decoder.decode(CharacterResponse.self, from: data)
        
        // Access the characters array from the response
        let characters = response.results
        
        DispatchQueue.main.async{
            self.allCharacters = characters
        }
    }
    
 
    



    
    enum URLError:Error{
        case invalidUrl, badresponse, invalidData
    }
}
