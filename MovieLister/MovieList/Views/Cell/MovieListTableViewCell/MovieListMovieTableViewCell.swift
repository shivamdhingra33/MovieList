//
//  MovieListTableViewCell.swift
//  MovieSearch
//
//  Created by Fleetx on 31/03/21.
//

import UIKit

class MovieListTableViewCell: UITableViewCell, ViewFromNib {
    
    @IBOutlet var ivImageView: UIImageView!
    @IBOutlet var lTitleLabel: UILabel!
    @IBOutlet var lYearLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(withData movie: Movie) {
        ivImageView.setPoster(withPath: movie.poster_path)
        lTitleLabel.text = movie.title
        lYearLabel.text = movie.release_date
    }
    
}
