//
//  MovieCollectionViewCell.swift
//  AppGhibli
//
//  Created by Jenifer Rocha on 03/04/25.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "MovieCollectionViewCell"
    
    private var screen: MovieCollectionViewCellScreen = MovieCollectionViewCellScreen()
    
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
}
