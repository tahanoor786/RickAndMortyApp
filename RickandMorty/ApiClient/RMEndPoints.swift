//
//  RMEndPoints.swift
//  RickandMorty
//
//  Created by Taha Noor on 5/25/23.
//

import Foundation

/// Representing unique api endpoint
@frozen enum RMEndPoints: String {
// endpoints to get character info
    case character
// endpoint to get episode info
    case episode
//  endpoint to get location info
    case location
}
