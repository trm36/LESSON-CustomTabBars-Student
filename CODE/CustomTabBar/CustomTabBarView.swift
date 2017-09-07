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
   
   @IBOutlet weak var label0: UILabel!
   @IBOutlet weak var label1: UILabel!
   @IBOutlet weak var label2: UILabel!
   
   @IBOutlet weak var button0: UIButton!
   @IBOutlet weak var button1: UIButton!
   @IBOutlet weak var button2: UIButton!
   
   var icons: [(unselected: UIImage, selected: UIImage)] = [(UIImage(named: "one")!, UIImage(named: "oneS")!),
                                                            (UIImage(named: "two")!, UIImage(named: "twoS")!),
                                                            (UIImage(named: "three")!, UIImage(named: "threeS")!)]
   
   weak var delegate: CustomTabBarViewDelegate?
   
   func setAppearance(forIndex index: Int) {
      let imageViews: [UIImageView] = [imageView0, imageView1, imageView2]
      let labels: [UILabel] = [label0, label1, label2]
      
      for i in 0..<imageViews.count {
         if i == index {
            //selected tab
            imageViews[i].image = icons[i].selected.withRenderingMode(.alwaysTemplate)
            imageViews[i].tintColor = .green
            labels[i].textColor = .green
         } else {
            //unselected tab
            imageViews[i].image = icons[i].unselected.withRenderingMode(.alwaysTemplate)
            imageViews[i].tintColor = .white
            labels[i].textColor = .white
         }
      }
   }
   
   @IBAction func tabBarButtonTapped(_ sender: UIButton) {
      delegate?.tabBarViewChangedSelectedIndex(at: sender.tag)
   }
}


