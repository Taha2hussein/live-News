//
//  newTableViewCell.swift
//  liveNews
//
//  Created by A on 8/27/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import UIKit
import IBAnimatable
import Kingfisher
protocol newCell : class{
    func reuseNewCell(_ cell : newTableViewCell, _ new: NewModel ,_ indexPath:IndexPath)
}

class newTableViewCell: UITableViewCell {

    @IBOutlet weak var newDescribtion: UILabel!
    @IBOutlet weak var newTitle: UILabel!
    @IBOutlet weak var newImage: AnimatableImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension newTableViewCell  :newCell{
    func reuseNewCell(_ cell: newTableViewCell, _ new: NewModel,_ indexPath:IndexPath) {
        self.newTitle.text = new.articles[indexPath.row].title
        self.newDescribtion.text = new.articles[indexPath.row].articleDescription
        if let url =  new.articles[indexPath.row].urlToImage as? String{
        self.setImage(url)
        }
    }
    func setImage(_ url : String){
        let url = URL(string: url)
        self.newImage.kf.setImage(with: url)
     
    }
    
    
}
