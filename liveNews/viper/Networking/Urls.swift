//
//  Urls.swift
//  liveNews
//
//  Created by A on 8/27/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import UIKit
class MyLinks
    
{
    // Singltoon Design Pattern To Create Apis Once
    static private (set) var shared : MyLinks? = MyLinks()
    private init() {}
    
    static func destroy() {
        shared = nil
        shared = MyLinks()
    }


    
    let newApi = "https://newsapi.org/v1/articles?source=techcrunch&apiKey=17cf1b333e964cea91e89e1e824bd366"
}
