//
//  MovieDetailsViewModel.swift
//  MovieLister
//
//  Created by Fleetx on 29/05/21.
//

import Foundation

class MovieDetailsViewModel {
    var movie: Movie?
    
    var rating: String? {
        return "\(movie?.vote_average ?? 0)"
    }
    
    var voteCount: String? {
        return "(\(movie?.vote_count ?? 0))"
    }
    
    init(_ movie: Movie?) {
        self.movie = movie
    }
}
