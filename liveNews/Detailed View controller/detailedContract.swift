//
//  detailedContract.swift
//  liveNews
//
//  Created by A on 8/28/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import UIKit


// MARK: View Output (Presenter -> View)
protocol PresenterToViewdetailedProtocol {
   func setUp()
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterdetailedProtocol {
    
    var view: PresenterToViewdetailedProtocol? { get set }
    var interactor: PresenterToInteractordetailedProtocol? { get set }
    var router: PresenterToRouterdetailedProtocol? { get set }
 
    func popView(_ viewContoleller : UIViewController)
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractordetailedProtocol {
    
    var presenter: InteractorToPresenterdetailedProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterdetailedProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterdetailedProtocol {
    func popView(_ viewContoleller : UIViewController)
}
