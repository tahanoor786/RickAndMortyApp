//
//  RMGetAllCharactersResponse.swift
//  RickandMorty
//
//  Created by Taha Noor on 5/27/23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {

    let info: Info
    let results: [RMCharacter]
    
    
    
}

extension RMGetAllCharactersResponse {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
}
