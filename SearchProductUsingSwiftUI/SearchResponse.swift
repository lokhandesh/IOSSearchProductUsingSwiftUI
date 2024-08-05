//
//  SearchResponse.swift
//  SearchProductUsingSwiftUI
//
//  Created by santosh lokhande on 1/8/24.
//

import Foundation

struct SearchResponse : Codable{
    let resultCount: Int?
    let results: [Result]?
}

struct Result: Codable, Identifiable {
    
    var id = UUID().uuidString
    let trackName: String?
    let artworkUrl60: String?
    let trackPrice: Double?
    let currency: String?
    
    enum CodingKeys: String, CodingKey {
        case trackName
        case artworkUrl60, currency
        case trackPrice
    }
    
    
}
