//
//  MovieListViewModel.swift
//  MovieLister
//
//  Created by Fleetx on 29/05/21.
//

import Foundation

class MovieListViewModel {
    var movies: [Movie]?
    
    init() {
        self.movies = getMovies()
    }
}
