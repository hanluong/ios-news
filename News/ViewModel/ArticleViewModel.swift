//
//  ArticleViewModel.swift
//  News
//
//  Created by Han Luong on 9/13/19.
//  Copyright © 2019 Han Luong. All rights reserved.
//

import Foundation

struct ListArticleViewModel {

    var articleListViewModel = [ArticleViewModel]()
    
    var numberOfSection: Int {
        return 1
    }
    
    func numberOfRowsInSection(section: Int) -> Int {
        return self.articleListViewModel.count
    }
    
    func cellForRow(at index: Int) -> ArticleViewModel {
        return self.articleListViewModel[index]
    }
    
}

struct ArticleViewModel {
    private let article: Article
    
    init(_ article: Article) {
        self.article = article
    }
    
    // objects on View
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description
    }
}
