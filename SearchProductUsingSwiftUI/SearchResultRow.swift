//
//  SearchResultRow.swift
//  SearchProductUsingSwiftUI
//
//  Created by santosh lokhande on 1/8/24.
//

import Foundation
import SwiftUI


struct SearchResultRow : View {
    
    let result: SearchResultViewModel
    
    var body: some View {
        HStack {
            
            AsyncImage(url: result.imageUrl) { image in
                image.resizable()
            } placeholder: {
                Image(systemName: "camera.fill")
            }
                .frame(width:50,height:50)
                .cornerRadius(10)
            
            
            Text(result.trackName)
                .font(.title3)
                .lineLimit(2)
            
            Spacer()
            
            VStack {
                Text("Price")
                    .font(.caption2)
                Text(result.fullPrice)
                    .font(.caption2.weight(.heavy))
            }
            
        }
    }
    
}


