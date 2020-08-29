//
//  detailedViewController.swift
//  liveNews
//
//  Created by A on 8/28/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import UIKit
class detailedViewController: UIViewController {
    
    @IBOutlet weak var detailedDescribtion: UITextView!
    @IBOutlet weak var detailedDate: UILabel!
    @IBOutlet weak var detailedImageView: UIImageView!
    // MARK: - Properties
    var presenter: ViewToPresenterdetailedProtocol?
    var newListPresenter : ViewToPresenternewsProtocol?
    var newModel : Article?
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
       setUp()
       
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden = true
        
    }
    @IBAction func closeDetailedView(_ sender: Any) {
        presenter?.popView(self)
    }
    
    @IBAction func openHome(_ sender: Any) {
        presenter?.pushTohome(self)
    }
    
}

extension detailedViewController: PresenterToViewdetailedProtocol{
    func setUp() {
        self.detailedDate.text = newModel?.publishedAt
        self.detailedDescribtion.text = newModel?.articleDescription
        setImage(newModel?.urlToImage ?? "")
    }
    func setImage(_ url : String){
        let url = URL(string: url)
        self.detailedImageView.kf.setImage(with: url)
     
    }
    
    // TODO: Implement View Output Methods
}
