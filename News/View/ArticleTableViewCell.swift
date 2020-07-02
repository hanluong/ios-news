//
//  ArticleTableViewCell.swift
//  News
//
//  Created by Han Luong on 9/13/19.
//  Copyright © 2019 Han Luong. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateView(articleViewModel: ArticleViewModel) {
        self.titleLabel.text = articleViewModel.title
        self.descriptionLabel.text = articleViewModel.description
    }
    

}
