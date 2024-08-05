//
//  ContentViewModel.swift
//  SearchProductUsingSwiftUI
//
//  Created by santosh lokhande on 1/8/24.
//

import Foundation

@MainActor class ContentViewModel : ObservableObject{
    
    
    @Published var results = [Result]()
    @Published var serviceCallStatus : Bool = false
    
    
    func performSearch(searchText : String) {
        guard let url = URL(string: "https://itunes.apple.com/search?term=\(searchText)"), !searchText.isEmpty
        else {return}
        
        Task {
            do {
                serviceCallStatus = true
                let(data,_) = try await URLSession.shared.data(from: url)
                let response = try JSONDecoder()
                    .decode(SearchResponse.self, from: data )
                results = response.results ?? []
                
            } catch {
                print(error.localizedDescription)
                serviceCallStatus = false
                
            }
            addTwoNumber( a: 4, b: 5)
        }
        
        
    }
    
    
    func addTwoNumber(a:Int,b:Int) -> Int {
        return a+b
    }
    
    
}

