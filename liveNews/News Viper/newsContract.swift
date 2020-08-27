//
//  newsContract.swift
//  liveNews
//
//  Created by A on 8/27/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewnewsProtocol {
   func showLoader()
   func hideLoader()
   func reloadData()

}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenternewsProtocol {
    
    var view: PresenterToViewnewsProtocol? { get set }
    var interactor: PresenterToInteractornewsProtocol? { get set }
    var router: PresenterToRouternewsProtocol? { get set }
    
    func viewDidLoad()
    func cellOfRowsInTable(_ cell : newTableViewCell , _ index : IndexPath)
    func numberOfRowInSection(_ section : Int) -> Int
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractornewsProtocol {
    
    var presenter: InteractorToPresenternewsProtocol? { get set }
    func getNewsFromServer()
  
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenternewsProtocol {
    func failedToGetNew(_ response:Bool)
    func sucessedToGetNew(_ new:NewModel)
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouternewsProtocol {
    
}
