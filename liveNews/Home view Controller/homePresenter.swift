//
//  homePresenter.swift
//  liveNews
//
//  Created by A on 8/29/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation

class homePresenter: ViewToPresenterhomeProtocol {

    // MARK: Properties
    var view: PresenterToViewhomeProtocol?
    var interactor: PresenterToInteractorhomeProtocol?
    var router: PresenterToRouterhomeProtocol?
}

extension homePresenter: InteractorToPresenterhomeProtocol {
    
}
