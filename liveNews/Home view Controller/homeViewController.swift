//
//  homeViewController.swift
//  liveNews
//
//  Created by A on 8/29/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {

    // Mark : variables
    var presenter : ViewToPresenterhomeProtocol?
    

    // Mark : outlets
    @IBOutlet weak var userTableVoew: UITableView!
    
    
    // MARK: - Lifecycle Methods
       override func viewDidLoad() {
           super.viewDidLoad()
         
        

       }
       override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(true)
           self.navigationController?.isNavigationBarHidden = true
           
       }

    

}
extension homeViewController: PresenterToViewhomeProtocol{
    
}

extension  homeViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userTableViewCell", for: indexPath)as! userTableViewCell
        if indexPath.row == 0{
        if let layout = cell.collectionData.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 150
    }
}

