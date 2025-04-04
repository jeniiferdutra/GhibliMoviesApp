//
//  HomeViewModel.swift
//  AppGhibli
//
//  Created by Jenifer Rocha on 03/04/25.
//

import UIKit

class HomeViewModel {
    
    private var movies = [
        Movies(movieName: "chihiro", movieImage: "Spirited Away"),
        Movies(movieName: "howls", movieImage: "Howl's Moving Castle"),
        Movies(movieName: "marnie", movieImage: "Omoide no Mânî"),
        Movies(movieName: "mononoke", movieImage: "Princess Mononoke"),
        Movies(movieName: "totoro", movieImage: "Tonari no Totoro")
    ]
    
    public var getListMovies: [Movies] {
        movies
    }

    public var numberOfItems: Int {
        return 1
    }
    
}
