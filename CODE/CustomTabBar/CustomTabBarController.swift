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
        
        let frame = CGRect(x: 0, y: view.frame.height - 75.0, width: view.frame.width, height: 75)
        tabView.frame = frame
        selectedIndex = 0
        tabView.delegate = self
        view.addSubview(tabView)
    }
    
    // MARK: - Custom Tab Bar Delegate
    
    func tabBarViewChangedSelectedIndex(at index: Int) {
        selectedIndex = index
    }

}
