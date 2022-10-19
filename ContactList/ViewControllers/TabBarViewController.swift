//
//  TabBarViewController.swift
//  ContactList
//
//  Created by leogoba on 18.10.2022.
//

import UIKit

import UIKit

class TabBarViewController: UITabBarController {
    
    private let persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarSetting()
        prepareVCs()
    }
    
    private func tabBarSetting() {
        let tabBarAppearance = UITabBarAppearance()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
    
    private func prepareVCs() {
        guard let viewControllers = viewControllers else { return }
        viewControllers.forEach { viewController in
            if let contactTableVC = viewController as? ContactTableViewController {
                contactTableVC.persons = persons
            }
            if let personSectionVC = viewController as? PersonSectionTableViewController {
                personSectionVC.persons = persons
            }
        }
    }
}
