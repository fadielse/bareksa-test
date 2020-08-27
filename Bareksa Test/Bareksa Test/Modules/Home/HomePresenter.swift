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
    // TODO: Declare view presenter methods
}

protocol HomeView: class {
    // TODO: Declare view methods
}

class HomePresenter: HomeViewPresenter {
    
    static func config(withHomeViewController vc: HomeViewController) {
        let presenter = HomePresenter(view: vc)
        vc.presenter = presenter
    }
    
    let view: HomeView
    
    required init(view: HomeView) {
        self.view = view
    }
    
    // TODO: Implement view presenter methods
}
