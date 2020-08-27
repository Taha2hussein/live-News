//
//  newsViewController.swift
//  liveNews
//
//  Created by A on 8/27/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import UIKit
import PKHUD
class newsViewController: UIViewController {
    
    
    @IBOutlet weak var newTableView: UITableView!
    
    // MARK: - Properties
      var presenter: ViewToPresenternewsProtocol?
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
//        self.navigationController?.isNavigationBarHidden = true
     navigationController?.navigationBar.prefersLargeTitles = true
    navigationItem.largeTitleDisplayMode = .always
        presenter?.viewDidLoad()

    }
    
  
    
}

extension newsViewController: PresenterToViewnewsProtocol{
    func reloadData() {
        newTableView.reloadData()
    }
    
    func showLoader() {
     HUD.show(.progress)
    }
    
    func hideLoader() {
        HUD.hide()
    }
    
    // TODO: Implement View Output Methods
}


extension newsViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.numberOfRowInSection(section) ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newTableViewCell", for: indexPath)as! newTableViewCell
        presenter?.cellOfRowsInTable(cell, indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
