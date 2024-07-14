//
//  CollectionSection.swift
//  CollectionViewCompositionLayout
//
//  Created by Даниил Сивожелезов on 14.07.2024.
//

import Foundation

struct CollectionSection: Identifiable {
    let id: String = UUID().uuidString
    let header: String
    let items: [CollectionItem]
    
    func mockData() -> [CollectionSection] {
        
    }
}
