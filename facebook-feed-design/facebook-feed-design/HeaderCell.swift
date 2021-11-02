//
//  HeaderCell.swift
//  facebook-feed-design
//
//  Created by user205198 on 10/23/21.
//

import UIKit

class HeaderCell: UITableViewCell, UICollectionViewDelegate {
    
    
    
    @IBOutlet var categoryCollectionView: UICollectionView!
    
    
    
    @IBOutlet var storiesCollectionView: UICollectionView!
    
    static func nib() -> UINib{
        return UINib(nibName: "HeaderCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
      
        categoryCollectionView.dataSource = self
        categoryCollectionView.delegate = self
        categoryCollectionView.register(CategoryCell.nib(), forCellWithReuseIdentifier: "CategoryCell")
        
       
        storiesCollectionView.dataSource = self
        storiesCollectionView.delegate = self
        storiesCollectionView.register(StoryCell.nib(), forCellWithReuseIdentifier: "StoryCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}


//extension ViewController: UICollectionViewDelegateFlowLayout{
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: view.frame.size.width / 4, height: view.frame.size.height / 4)
//    }
//}

extension HeaderCell: UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.categoryCollectionView{
            return 5
        }
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.categoryCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath)

            return cell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCell", for: indexPath)
        
        return cell
    }
    
    
}
