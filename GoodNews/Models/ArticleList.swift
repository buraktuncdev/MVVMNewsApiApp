//
//  Article.swift
//  GoodNews
//
//  Created by Burak Tunc on 17.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation


struct ArticleList: Decodable {
    let status: String?
    let totalResults: Int?
    let articles: [Article]?
}

struct Article: Decodable {
    let title: String?
    let description: String?
    let urlToImage: String?
}


