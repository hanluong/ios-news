//
//  WebService.swift
//  News
//
//  Created by Han Luong on 9/13/19.
//  Copyright © 2019 Han Luong. All rights reserved.
//

import Foundation

class WebService {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                debugPrint("Error! get Articles. \(error)")
                completion(nil)
            } else if let data = data {
                let listArticle = try? JSONDecoder().decode(ListArticle.self, from: data)
                completion(listArticle?.articles)
            }
        }.resume()
    }
}
