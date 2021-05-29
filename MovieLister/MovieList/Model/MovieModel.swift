//
//  MovieModel.swift
//  MovieLister
//
//  Created by Fleetx on 29/05/21.
//

import Foundation

struct Movie: Codable {
    var id: Int?
    var title: String?
    var overview: String?
    var vote_average: Double?
    var vote_count: Int?
    var poster_path: String?
    var release_date: String?
}
