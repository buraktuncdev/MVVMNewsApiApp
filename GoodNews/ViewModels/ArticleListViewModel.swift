//
//  ArticleListViewModel.swift
//  GoodNews
//
//  Created by Burak Tunc on 18.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation


struct ArticleListViewModel {
    let articles: [Article]
    
    var numberOfSections: Int {
          return 1
      }
      
      func numberOfRowsInSection(_ section: Int) -> Int {
          return self.articles.count
      }
      
      func articleAtIndex(_ index:Int) -> ArticleViewModel {
          let article = self.articles[index]
          return ArticleViewModel(article)
      }
}
