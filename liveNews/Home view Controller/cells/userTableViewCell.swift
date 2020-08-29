//
//  userTableViewCell.swift
//  liveNews
//
//  Created by A on 8/30/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import UIKit

class userTableViewCell: UITableViewCell {
    @IBOutlet weak var sectionName: UILabel!
    @IBOutlet weak var collectionData : UICollectionView!
    
    let data = ["one","two","three","one","two","three","one","two","three"]
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionData.dataSource = self
        collectionData.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension userTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dataCollectionViewCell", for: indexPath)as! dataCollectionViewCell
        cell.muLabel.text = data[indexPath.item]
        return cell
    }

//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 150, height: 150)
//    }
}
