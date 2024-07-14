//
//  StoryCollectionViewCell.swift
//  CollectionViewCompositionLayout
//
//  Created by Даниил Сивожелезов on 14.07.2024.
//

import UIKit

final class StoryCollectionViewCell: UICollectionViewCell, CellProtocol {
    
    static var reuseId: String = "StoryCollectionViewCell"
    
    lazy var imageView: UIImageView = {
       let image = UIImageView()
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(item: CollectionItem) {
        setupUI()
    }
    
    private func setupUI() {
        addSubview(imageView)
        setupConstraints()
    }
    
    private func setupConstraints() {
        
    }
}
