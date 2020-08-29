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
    
    let dataSource = HomeTableDataSource()
    let headerFooterHeight: CGFloat = 16.0
    
    // MARK: Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        HomePresenter.config(withHomeViewController: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
}

// MARK: - HomeView

extension HomeViewController: HomeView {
    func setupView() {
        tableView.separatorStyle = .none
        tableView.estimatedRowHeight = 50.0
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(UINib(nibName: "BalanceTableViewCell", bundle: nil), forCellReuseIdentifier: "BalanceTableViewCell")
        tableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "NewsTableViewCell")
        tableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell")
        tableView.delegate = self
    }
    
    func getHomeDataSuccess() {
        dataSource.data = presenter.getHomeResult()
        tableView.dataSource = dataSource
        tableView.reloadData()
    }
    
    func getHomeDataFailed(withMessage message: String) {
        showAlert(message: message)
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0.1
        }
        return headerFooterHeight
    }

    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: headerFooterHeight))
        footerView.backgroundColor = .white
        return footerView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return headerFooterHeight
    }
}
