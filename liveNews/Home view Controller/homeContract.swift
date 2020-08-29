//
//  homeContract.swift
//  liveNews
//
//  Created by A on 8/29/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewhomeProtocol {
   
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterhomeProtocol {
    
    var view: PresenterToViewhomeProtocol? { get set }
    var interactor: PresenterToInteractorhomeProtocol? { get set }
    var router: PresenterToRouterhomeProtocol? { get set }
    
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorhomeProtocol {
    
    var presenter: InteractorToPresenterhomeProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterhomeProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterhomeProtocol {
    
}
