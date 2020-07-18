//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Burak Tunc on 17.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import UIKit

class NewsListTableViewController: UITableViewController {

    private var articleListVM: ArticleListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()

    }
    
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=<API_KEY>")!
        Webservice().getArticles(url: url, completion: { articles in
            
            if let articles = articles {
                self.articleListVM = ArticleListViewModel(articles: articles)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            
            
        })
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSections as! Int
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "articleListCell", for: indexPath) as? ArticleViewCell else {
            
            fatalError("articleListCell is not found")
 
        }
        
        let articleVM = self.articleListVM.articleAtIndex(indexPath.row)
        cell.titleLabel.text = articleVM.title
        cell.descripyionLabel.text = articleVM.descripton
        return cell
    }

   

}
