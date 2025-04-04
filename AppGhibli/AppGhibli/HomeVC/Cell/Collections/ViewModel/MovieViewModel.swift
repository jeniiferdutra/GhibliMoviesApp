//
//  MovieViewModel.swift
//  AppGhibli
//
//  Created by Jenifer Rocha on 03/04/25.
//

import UIKit

class MovieViewModel {
    
    private var listMovies: [Movies]
        
        init(listMovies: [Movies]) {
            self.listMovies = listMovies
        }
    
    public var numberOfItems: Int {
            listMovies.count
        }
    
    public func loadCurrentStory(indexPath: IndexPath) -> Movies {
            listMovies[indexPath.row]
        }

}
