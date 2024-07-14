//
//  CollectionItem.swift
//  CollectionViewCompositionLayout
//
//  Created by Даниил Сивожелезов on 14.07.2024.
//

import Foundation

struct CollectionItem: Identifiable {
    let id: String = UUID().uuidString
    let image: String
    let header: String? = nil
    let name: String? = nil
    let text: String? = nil
}
