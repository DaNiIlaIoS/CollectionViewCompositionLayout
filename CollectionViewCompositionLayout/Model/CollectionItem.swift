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
    var header: String? = nil
    var name: String? = nil
    var text: String? = nil
}
