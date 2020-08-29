//
//  HomePresenter.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 26/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol HomeViewPresenter: class {
    init(view: HomeView)
    
    var homeResult: Home? { get set }
    
    func viewDidLoad()
    func getHomeData()
    func getHomeResult() -> Home?
}

protocol HomeView: class {
    func setupView()
    func getHomeDataSuccess()
    func getHomeDataFailed(withMessage message: String)
}

class HomePresenter: HomeViewPresenter {
    static func config(withHomeViewController vc: HomeViewController) {
        let presenter = HomePresenter(view: vc)
        vc.presenter = presenter
    }
    
    let view: HomeView
    var homeResult: Home? {
        didSet {
            view.getHomeDataSuccess()
        }
    }
    
    required init(view: HomeView) {
        self.view = view
    }
    
    func viewDidLoad() {
        view.setupView()
        getHomeData()
    }
    
    func getHomeData() {
        if let homeJson = loadDummyData(withFilename: "Home") {
            let homeDao = HomeDAO(json: homeJson)
            if homeDao.success {
                homeResult = homeDao.home
            } else {
                view.getHomeDataFailed(withMessage: homeDao.getMessage())
            }
        }
    }
    
    func getHomeResult() -> Home? {
        return homeResult
    }
    
    private func loadDummyData(withFilename filename: String, withExtension fileExtension: String = "json") -> JSON? {
        if let file = Bundle(for: type(of: self)).url(forResource: filename, withExtension: fileExtension) {
            guard let data = try? Data(contentsOf: file) else { return nil }
            let dataJson = try? JSON(data: data)
            return dataJson
        }
        return nil
    }
}
