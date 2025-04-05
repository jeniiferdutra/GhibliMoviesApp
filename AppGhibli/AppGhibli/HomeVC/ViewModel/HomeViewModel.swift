//
//  HomeViewModel.swift
//  AppGhibli
//
//  Created by Jenifer Rocha on 03/04/25.
//

import UIKit

class HomeViewModel {
    
    private var movies = [
        Movies(movieName: "Spirited Away", movieImage: "chihiro"),
        Movies(movieName: "Howl's Moving Castle", movieImage: "holws"),
        Movies(movieName: "Omoide no Mânî", movieImage: "marnie"),
        Movies(movieName: "Princess Mononoke", movieImage: "mononoke"),
        Movies(movieName: "Tonari no Totoro", movieImage: "totoro")
    ]
    
    public var getListMovies: [Movies] {
        movies
    }

    public var numberOfItems: Int {
        return 1
    }
    
}
