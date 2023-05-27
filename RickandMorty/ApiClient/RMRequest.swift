//
//  RMRequest.swift
//  RickandMorty
//
//  Created by Taha Noor on 5/25/23.
//

import Foundation

/// Object that represt a single api call
final class RMRequest {
    
    /// Api Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndPoints
    private let pathComponents: Set<String>
    private let queryParameters: [URLQueryItem]
    
    
    
    ///  Various Component of the url add here
    private var urlString: String {
        var string   = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name) = \(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        
        return string
    }
    
    /// Computed URL for the API
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Http method for the API
    public let httpMethod = "GET"
    
    
    /// Constructor for the api
    /// - Parameters:
    ///   - endpoint: Target Endpoint
    ///   - pathComponents: Collection of Path components
    ///   - queryParameters: Collection of query parameters
    init(endpoint: RMEndPoints, pathComponents: Set<String> = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}
