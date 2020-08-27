//
//  newsRouter.swift
//  liveNews
//
//  Created by A on 8/27/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation
import UIKit

class newsRouter: PresenterToRouternewsProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "newsViewController")as! newsViewController
        
        let presenter: ViewToPresenternewsProtocol & InteractorToPresenternewsProtocol = newsPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = newsRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = newsInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
