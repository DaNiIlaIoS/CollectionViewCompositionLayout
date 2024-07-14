//
//  CellProtocol.swift
//  CollectionViewCompositionLayout
//
//  Created by Даниил Сивожелезов on 14.07.2024.
//

import UIKit

protocol CellProtocol: AnyObject {
    static var reuseId: String { get }
    var imageView: UIImageView { get set }
    func setupCell(item: CollectionItem)
}
