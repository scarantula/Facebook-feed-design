//
//  ViewController.swift
//  facebook-feed-design
//
//  Created by user205198 on 10/21/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var tableHeader: UIView!
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    
    @IBOutlet weak var storiesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(FeedPost.nib(), forCellReuseIdentifier: "FeedPost")
        tableView.delegate = self
        tableView.dataSource = self
        
//        tableHeader.frame.size = tableView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        tableView.tableHeaderView = tableHeader
        
        
//        categoryCollectionView.delegate = self
//        categoryCollectionView.dataSource = self
//        categoryCollectionView.register(CategoryCell.nib(), forCellWithReuseIdentifier: "CategoryCell")
//        
//        storiesCollectionView.delegate = self
//        storiesCollectionView.dataSource = self
//        storiesCollectionView.register(StoryCell.nib(), forCellWithReuseIdentifier: "StoryCell")
    }
}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath)
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedPost", for: indexPath)
        return cell
        
        
    }
    
}

//extension ViewController: UICollectionViewDelegate{
//
//}
//
//extension ViewController: UICollectionViewDataSource{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        if collectionView == self.categoryCollectionView{
//            return 5
//        }
//        return 10
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if collectionView == self.categoryCollectionView{
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath)
//
//            return cell
//        }
//
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCell", for: indexPath)
//
//        return cell
//    }
//}
//
//extension ViewController: UICollectionViewDelegateFlowLayout{
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: view.frame.size.width / 3, height: view.frame.size.height / 3)
//    }
//}

