//
//  newModel.swift
//  liveNews
//
//  Created by A on 8/27/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import Foundation
// MARK: - NewModel
struct NewModel: Codable {
    let status, source, sortBy: String
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let author, title, articleDescription: String
    let url: String
    let urlToImage: String
    let publishedAt: String

    enum CodingKeys: String, CodingKey {
        case author, title
        case articleDescription = "description"
        case url, urlToImage, publishedAt
    }
}
