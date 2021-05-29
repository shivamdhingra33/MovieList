//
//  MovieListViewController.swift
//  MovieLister
//
//  Created by Fleetx on 29/05/21.
//

import UIKit

class MovieListViewController: UIViewController, ViewFromNib {

    @IBOutlet var tvTableView: UITableView!
    
    var viewModel: MovieListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configureView()
    }
    
    private func configureView() {
        title = "Movies"
        MovieListTableViewCell.registerCell(forTableView: tvTableView)
    }

}

extension MovieListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.movies?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MovieListTableViewCell.dequeueCell(forTableView: tableView, indexPath: indexPath)
        if indexPath.row < viewModel.movies?.count ?? 0, let movie = viewModel.movies?[indexPath.row] {
            cell.configureCell(withData: movie)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row < viewModel.movies?.count ?? 0, let movie = viewModel.movies?[indexPath.row], let vc = MovieDetailsViewController.viewController() {
            vc.viewModel = MovieDetailsViewModel(movie)
            show(vc, sender: self)
        }
    }
}
