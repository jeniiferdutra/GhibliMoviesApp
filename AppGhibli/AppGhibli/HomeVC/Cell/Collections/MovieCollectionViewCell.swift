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
    
    private var viewModel: MovieViewModel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configScreen()
        screen.configProtocolsCollectionView(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScreen() {
        contentView.addSubview(screen)
        screen.pin(to: contentView)
    }
    
    public func setupCell(listMovies: [Movies]) {
        viewModel = MovieViewModel(listMovies: listMovies)
        screen.collectionView.reloadData()
    }
}

extension MovieCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel?.numberOfItems ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let viewModel = viewModel else { return UICollectionViewCell() }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
