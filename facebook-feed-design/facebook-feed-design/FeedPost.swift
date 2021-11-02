//
//  FeedPost.swift
//  facebook-feed-design
//
//  Created by user205198 on 10/22/21.
//

import UIKit

class FeedPost: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    static func nib() -> UINib{
        return UINib(nibName: "FeedPost", bundle: nil)
    }

    
}
