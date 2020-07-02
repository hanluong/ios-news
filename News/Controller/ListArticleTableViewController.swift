//
//  ListArticleTableViewController.swift
//  News
//
//  Created by Han Luong on 9/13/19.
//  Copyright © 2019 Han Luong. All rights reserved.
//

import UIKit

class ListArticleTableViewController: UITableViewController {

    private var listArticleViewModel = ListArticleViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    func setup() {
        guard let url = URL(string: URL_TOP_US_NEWS) else { fatalError() }
        WebService().getArticles(url: url) { (articles) in
            if let articles = articles {
                print(articles.count)
                self.listArticleViewModel.articleListViewModel = articles.map(ArticleViewModel.init)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.listArticleViewModel.numberOfSection
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listArticleViewModel.numberOfRowsInSection(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: IDENTIFIER_ARTICLE_CELL, for: indexPath) as? ArticleTableViewCell else {
            return UITableViewCell()
        }
        
        cell.updateView(articleViewModel: self.listArticleViewModel.cellForRow(at: indexPath.row))
        
        return cell
    }
}
