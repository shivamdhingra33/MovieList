//
//  Constants.swift
//  MovieLister
//
//  Created by Fleetx on 29/05/21.
//

import Foundation

var baseImageUrl = "http://image.tmdb.org/t/p/w92"


func getMovies() -> [Movie]? {
    if let path = Bundle.main.path(forResource: "movies", ofType: "json"), let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
        do {
            let movies = try JSONDecoder().decode([Movie].self, from: data)
            return movies
        }
        catch {
            print(error)
        }
    }
    return nil
}
