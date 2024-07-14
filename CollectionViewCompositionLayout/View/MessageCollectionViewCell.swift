//
//  MessageCollectionViewCell.swift
//  CollectionViewCompositionLayout
//
//  Created by Даниил Сивожелезов on 14.07.2024.
//

import UIKit

final class MessageCollectionViewCell: UICollectionViewCell, CellProtocol {
    
    static var reuseId: String = "MessageCollectionViewCell"
    
    lazy var imageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.widthAnchor.constraint(equalToConstant: 60).isActive = true
        image.heightAnchor.constraint(equalTo: image.widthAnchor, multiplier: 1).isActive = true
        image.layer.cornerRadius = 20
        return image
    }()
    
    private lazy var textLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray6
        clipsToBounds = true
        layer.cornerRadius = 20
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(item: CollectionItem) {
        imageView.image = UIImage(named: item.image)
        textLabel.text = item.text
        
        setupUI()
    }
    
    private func setupUI() {
        addSubview(imageView)
        addSubview(textLabel)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            textLabel.topAnchor.constraint(equalTo: imageView.topAnchor),
            textLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
}
