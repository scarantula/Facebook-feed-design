//
//  CategoryCell.swift
//  facebook-feed-design
//
//  Created by user205198 on 10/21/21.
//

import UIKit

class CategoryCell: UICollectionViewCell {

    
    @IBOutlet weak var categoryButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(image: UIImage, label: String){
        categoryButton.setTitle(label, for: .normal)
        categoryButton.setImage(image, for: .normal)
    }

    static func nib() -> UINib{
        return UINib(nibName: "CategoryCell", bundle: nil)
    }

}
