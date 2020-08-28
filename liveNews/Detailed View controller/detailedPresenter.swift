//
//  detailedPresenter.swift
//  liveNews
//
//  Created by A on 8/28/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import UIKit

class detailedPresenter: ViewToPresenterdetailedProtocol {
    func popView(_ viewContoleller: UIViewController) {
        router?.popView(viewContoleller)
    }
    
   
    

    // MARK: Properties
    var view: PresenterToViewdetailedProtocol?
    var interactor: PresenterToInteractordetailedProtocol?
    var router: PresenterToRouterdetailedProtocol?
}

extension detailedPresenter: InteractorToPresenterdetailedProtocol {
    
}
