//
//  detailedRouter.swift
//  liveNews
//
//  Created by A on 8/28/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation
import UIKit

class detailedRouter: PresenterToRouterdetailedProtocol {
    func popView(_ viewContoleller: UIViewController) {
        viewContoleller.navigationController?.popViewController(animated: true)
    }
    
    
    // MARK: Static methods
    static func createModule(_ newModel : Article) -> UIViewController {
        
          let viewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "detailedViewController")as! detailedViewController
        
        let presenter: ViewToPresenterdetailedProtocol & InteractorToPresenterdetailedProtocol = detailedPresenter()
        
        let presenters: ViewToPresenternewsProtocol & InteractorToPresenternewsProtocol = newsPresenter()
         
        viewController.newListPresenter = presenters
        viewController.presenter = presenter
        viewController.presenter?.router = detailedRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = detailedInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        viewController.newModel = newModel
        return viewController
    }
    
}
