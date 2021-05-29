//
//  ViewFromNib.swift
//  MovieSearch
//
//  Created by Fleetx on 30/03/21.
//

import UIKit

protocol ViewFromNib {
}

extension ViewFromNib {
    static var nibName: String {
        return String(describing: self)
    }
}

extension ViewFromNib where Self: UIView {
    static func view() -> Self? {
        return Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)?.first as? Self
    }
}

extension ViewFromNib where Self: UIViewController {
    static func viewController() -> Self? {
        return Self.init(nibName: nibName, bundle: nil)
    }
}

extension ViewFromNib where Self: UITableViewCell {
    static func registerCell(forTableView tableView: UITableView) {
        tableView.register(UINib(nibName: nibName, bundle: nil), forCellReuseIdentifier: nibName)
    }
    
    static func dequeueCell(forTableView tableView: UITableView, indexPath: IndexPath) -> Self {
        return tableView.dequeueReusableCell(withIdentifier: nibName, for: indexPath) as! Self
    }
}
