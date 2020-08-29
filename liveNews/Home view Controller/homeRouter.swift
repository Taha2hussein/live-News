//
//  homeRouter.swift
//  liveNews
//
//  Created by A on 8/29/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation
import UIKit

class homeRouter: PresenterToRouterhomeProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "homeViewController")as! homeViewController
        
        let presenter: ViewToPresenterhomeProtocol & InteractorToPresenterhomeProtocol = homePresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = homeRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = homeInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
