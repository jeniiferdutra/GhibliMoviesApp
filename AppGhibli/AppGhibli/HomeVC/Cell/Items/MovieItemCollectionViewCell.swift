//
//  MovieItemCollectionViewCell.swift
//  AppGhibli
//
//  Created by Jenifer Rocha on 03/04/25.
//

import UIKit

class MovieItemCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "MovieItemCollectionViewCell"
    
    private let screen: MovieItemCollectionViewCellScreen = MovieItemCollectionViewCellScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScreen() {
        contentView.addSubview(screen)
        screen.pin(to: contentView)
    }
    
    public func setupCell(data: Movies) {
        screen.movieImageView.image = UIImage(named: data.movieImage)
        screen.titleLabel.text = data.movieName
    }
    
}
