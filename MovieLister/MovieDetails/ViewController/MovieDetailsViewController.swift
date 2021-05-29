//
//  MovieDetailsViewController.swift
//  MovieLister
//
//  Created by Fleetx on 29/05/21.
//

import UIKit

class MovieDetailsViewController: UIViewController, ViewFromNib {
    
    @IBOutlet var lTitleLabel: UILabel!
    @IBOutlet var ivImageView: UIImageView!
    @IBOutlet var lDescriptionLabel: UILabel!
    @IBOutlet var lRatingLabel: UILabel!
    @IBOutlet var lVoteCountLabel: UILabel!
    @IBOutlet var lReleaseDateLabel: UILabel!
    
    var viewModel: MovieDetailsViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configureView()
    }
    
    private func configureView() {
        lTitleLabel.text = viewModel.movie?.title
        lDescriptionLabel.text = viewModel.movie?.overview
        ivImageView.setPoster(withPath: viewModel.movie?.poster_path)
        lRatingLabel.text = viewModel.rating
        lVoteCountLabel.text = viewModel.voteCount
        lReleaseDateLabel.text = viewModel.movie?.release_date
    }
}
