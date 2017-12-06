//
//  CustomTabBarController.swift
//  CustomTabBar
//
//  Created by Taylor Mott on 07-Sep-17.
//  Copyright © 2017 Mott Applications. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController, CustomTabBarViewDelegate {
    
    @IBOutlet weak var tabView: CustomTabBarView!
    
    override var selectedIndex: Int {
        didSet {
            tabView.setAppearance(forIndex: selectedIndex)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabView.translatesAutoresizingMaskIntoConstraints = false
        tabView.delegate = self
        selectedIndex = 0
        view.addSubview(tabView)
        
        let leadingConstraint = tabView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        let trailingConstraint = tabView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        let bottomConstraint = tabView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 34.0) //to extend behind the iPhone X home indicator
        let heightConstraint = tabView.heightAnchor.constraint(equalToConstant: 104.0) //includes 34.0 points for iPhone X home indicator
        
        NSLayoutConstraint.activate([leadingConstraint, trailingConstraint, bottomConstraint, heightConstraint])
    }
    
    // MARK: - Custom Tab Bar Delegate
    
    func tabBarViewChangedSelectedIndex(at index: Int) {
        selectedIndex = index
    }

}
