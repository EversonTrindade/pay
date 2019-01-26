//
//  ContactsViewController.swift
//  Pay
//
//  Created by Everson Trindade on 26/01/19.
//  Copyright © 2019 Everson Trindade. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ContactsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ContactsTableViewCell.self), for: indexPath) as? ContactsTableViewCell {
            return cell
        }
        return UITableViewCell()
    }
    
    
}
