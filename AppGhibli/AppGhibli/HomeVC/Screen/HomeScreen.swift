//
//  HomeScreen.swift
//  AppGhibli
//
//  Created by Jenifer Rocha on 03/04/25.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var collectionView: UICollectionView = { // Criacao da Collection
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsHorizontalScrollIndicator = false
        // TO DO: REGISTER
        cv.register(MovieCollectionViewCell.self, forCellWithReuseIdentifier: MovieCollectionViewCell.identifier)
        cv.backgroundColor = .clear
        return cv
    }()
    
    public func configProtocolsCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        collectionView.delegate = delegate
        collectionView.dataSource = dataSource
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 237/255, green: 237/255, blue: 237/255, alpha: 1)
        addSubview(collectionView)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        collectionView.pin(to: self)
    }
}
