//
//  newsInteractor.swift
//  liveNews
//
//  Created by A on 8/27/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation

class newsInteractor: PresenterToInteractornewsProtocol {
    
    var presenter: InteractorToPresenternewsProtocol?
    
    func getNewsFromServer() {
        networking.shared.getNews(completion: {[weak self] (new) in
            self?.presenter?.sucessedToGetNew(new)
         
             
        }) {[weak self] (response) in
            self?.presenter?.failedToGetNew(response)
        }
    }
    

    // MARK: Properties
   
}
