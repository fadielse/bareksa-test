//
//  HomeViewController.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 26/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import Foundation
import UIKit

// MARK: - HomeViewController

class HomeViewController: BaseViewController {

    static func createModule() -> HomeViewController {
        let viewController = UIStoryboard.init(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        return viewController
    }
    
    // MARK: Properties
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: HomeViewPresenter!
    
    // MARK: Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        HomePresenter.config(withHomeViewController: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - HomeView

extension HomeViewController: HomeView {
    // TODO: implement view methods
}
