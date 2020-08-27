//
//  server.swift
//  liveNews
//
//  Created by A on 8/27/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import UIKit
import Networking
import Alamofire
class networking {
    
    static let shared = networking()
    func getNews(completion:@escaping(NewModel)-> (), withCancel cancel: ((Bool) -> ())?){
        
        
        AF.request(MyLinks.shared?.newApi ?? "").response { response in
          
                guard let data = response.data else { return }
                do {
                    let decoder = JSONDecoder()
                    let newsResponse = try decoder.decode(NewModel.self, from: data)
                    completion(newsResponse)
                    
                } catch let error {
                    print(error)
                    cancel?(false)
                }
            
           
        }
    }
}
