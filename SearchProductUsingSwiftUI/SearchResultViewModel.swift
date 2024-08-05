//
//  SearchResultViewModel.swift
//  SearchProductUsingSwiftUI
//
//  Created by santosh lokhande on 1/8/24.
//

import Foundation


struct SearchResultViewModel {
    
    let model: Result
    
    var trackName : String {
        model.trackName ?? ""
    }
    
    var imageUrl : URL? {
        URL(string: model.artworkUrl60 ?? "")
    }
    
    var fullPrice: String {
        guard let gPrice = model.trackPrice,
              let gCurrency = model.currency else { return "NA"}
        return gPrice.formatted(.currency(code: gCurrency))
    }
    
    
    
}
