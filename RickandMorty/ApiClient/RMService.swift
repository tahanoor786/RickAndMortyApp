//
//  RMService.swift
//  RickandMorty
//
//  Created by Taha Noor on 5/25/23.
//

import Foundation

/// Primary Api service object to get Rick and Morty data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized Constructor
    private init () {}
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: request instance
    ///   - completion: callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping ()->Void) {
        
    }
}
 
