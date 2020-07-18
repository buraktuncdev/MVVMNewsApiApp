//
//  Webservice.swift
//  GoodNews
//
//  Created by Burak Tunc on 17.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import Foundation


class Webservice {
    
    
    func getArticles(url: URL, completion: @escaping ([Article]?) ->()) {
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let safeData = data {
                
                let decoder = JSONDecoder()

                do {
                    let articleList = try decoder.decode(ArticleList.self, from: safeData)
                 
                    completion(articleList.articles)

     
                } catch {
                    print(error.localizedDescription)
                }
                
                
            }
            
        }
    .resume()
    
        
    }
    
}
