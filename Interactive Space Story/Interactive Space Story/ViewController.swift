//
//  ViewController.swift
//  Interactive Space Story
//
//  Created by Jacqualyn Blizzard-Caron on 3/25/19.
//  Copyright © 2019 Jacqualyn Blizzard-Caron. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    let backgroundImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.setBackground(imageName: "space", backgroundImageView: backgroundImageView, view: view)
    }


}

