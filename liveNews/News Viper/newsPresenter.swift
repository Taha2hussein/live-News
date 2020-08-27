//
//  newsPresenter.swift
//  liveNews
//
//  Created by A on 8/27/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation

class newsPresenter: ViewToPresenternewsProtocol {
    func cellOfRowsInTable(_ cell: newTableViewCell, _ index: IndexPath) {
        guard let new = newData else{return}
        cell.reuseNewCell(cell, new, index)
    }
    
    func numberOfRowInSection(_ section: Int) -> Int {
        let number_Rows = newData?.articles.count
        return number_Rows ?? 0
    }
    
    func viewDidLoad() {
        view?.showLoader()
        interactor?.getNewsFromServer()
    }
    

    // MARK: Properties
    var view: PresenterToViewnewsProtocol?
    var interactor: PresenterToInteractornewsProtocol?
    var router: PresenterToRouternewsProtocol?
    var newData : NewModel?
    
}

extension newsPresenter: InteractorToPresenternewsProtocol {
    func failedToGetNew(_ response: Bool) {
        view?.hideLoader()
    }
    
    func sucessedToGetNew(_ new: NewModel) {
        newData = new
      
        view?.hideLoader()
        view?.reloadData()
    }
    
    
}
