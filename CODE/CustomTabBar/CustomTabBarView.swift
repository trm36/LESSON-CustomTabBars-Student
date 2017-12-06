//
//  CustomTabBarView.swift
//  CustomTabBar
//
//  Created by Taylor Mott on 06-Sep-17.
//  Copyright © 2017 Mott Applications. All rights reserved.
//

import Foundation
import UIKit

protocol CustomTabBarViewDelegate: class {
    func tabBarViewChangedSelectedIndex(at index: Int)
}

class CustomTabBarView: UIView {
    
    //INTERFACE BUILDER OUTLETS
    @IBOutlet weak var imageView0: UIImageView!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var indicator0: UIView!
    @IBOutlet weak var indicator1: UIView!
    @IBOutlet weak var indicator2: UIView!
    
    weak var delegate: CustomTabBarViewDelegate?
    
    func setAppearance(forIndex index: Int) {
        let indicators: [UIView] = [indicator0, indicator1, indicator2]
        //or [imageViews], or [any set of views you need to change]
        
        for i in 0..<indicators.count {
            if i == index {
                //set appearance for selected tab
                indicators[i].isHidden = false
            } else {
                //set appearance for UNselected tabs 
                indicators[i].isHidden = true
            }
        }
    }
    
    @IBAction func tabBarButtonTapped(_ sender: UIButton) {
        delegate?.tabBarViewChangedSelectedIndex(at: sender.tag)
    }
}


