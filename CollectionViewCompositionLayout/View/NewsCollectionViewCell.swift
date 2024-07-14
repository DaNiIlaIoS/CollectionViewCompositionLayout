//
//  NewsCollectionViewCell.swift
//  CollectionViewCompositionLayout
//
//  Created by Даниил Сивожелезов on 14.07.2024.
//

import UIKit

final class NewsCollectionViewCell: UICollectionViewCell, CellProtocol {
    
    static var reuseId: String = "NewsCollectionViewCell"
    
    lazy var imageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    private lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var textLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        layer.cornerRadius = 20
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(item: CollectionItem) {
        imageView.image = UIImage(named: item.image)
        titleLabel.text = item.header
        textLabel.text = item.text
        
        setupUI()
    }
    
    private func setupUI() {
        addSubview(imageView)
        imageView.addSubview(titleLabel)
        imageView.addSubview(textLabel)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 25),
            titleLabel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -25),
            
            textLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -20),
            textLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 25),
            textLabel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -25),
        ])
    }
}

