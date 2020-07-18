//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Burak Tunc on 18.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation




struct ArticleViewModel {
    
    private let article: Article
    
    init(_ article: Article) {
           self.article = article
       }
    
    var title: String {
        if let title = self.article.title {
            return title
        }
        else {
            return "Empty"
        }
    }
    
    var descripton: String {
        if let description = self.article.description {
            return description
        }
        else {
            return "Empty"
        }
    }
    
}

