//
//  Article.swift
//  News
//
//  Created by Han Luong on 9/13/19.
//  Copyright © 2019 Han Luong. All rights reserved.
//

import Foundation

struct ListArticle: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
