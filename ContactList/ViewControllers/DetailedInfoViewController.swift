//
//  DetailedInfoViewController.swift
//  ContactList
//
//  Created by leogoba on 19.10.2022.
//

import UIKit

class DetailedInfoViewController: UIViewController {
    
    @IBOutlet var infoLabels: [UILabel]!
    
    var info: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = info.fullName
        infoLabels.first?.text = "Phone: \(info.phoneNumber)"
        infoLabels.last?.text = "Email: \(info.email)"
    }

}
