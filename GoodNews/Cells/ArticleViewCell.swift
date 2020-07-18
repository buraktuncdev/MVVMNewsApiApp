//
//  ArticleViewCell.swift
//  GoodNews
//
//  Created by Burak Tunc on 18.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import UIKit

class ArticleViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descripyionLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
