//
//  SettingsViewController.swift
//  CustomTabBar
//
//  Created by Taylor Mott on 06-Dec-17.
//  Copyright © 2017 Mott Applications. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Adjust safe area to account for your custom tab view.
        /*GENERALLY bottom should be (height of your tab bar - 34.0 points for the home indicator)*/
        
        // In this case, the center button is slightly taller (10pt) than the rectangular body and
        // I wanted the content to fill all the way to the rectangular body and underlap the center
        // "tab bar item".
        //
        // MATH:
        //    104.0      Tab Bar Height, see CustomTabBarController.swift
        //   - 34.0      Home Indicator iPhone X
        //   - 10.0      Center "Tab Bar Item" to overlap content, see Storyboard.main
        //  -------
        //     60.0
        
        additionalSafeAreaInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 60.0, right: 0.0)
    }
}
