//
//  CharacterViewController.swift
//  Interactive Space Story
//
//  Created by Jacqualyn Blizzard-Caron on 3/25/19.
//  Copyright © 2019 Jacqualyn Blizzard-Caron. All rights reserved.
//

import UIKit
import Foundation

class CharacterViewController: UIViewController {
    let backgroundImageView = UIImageView()
    @IBOutlet weak var instructionsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.setBackground(imageName: "space", backgroundImageView: backgroundImageView, view: view)
        instructionsLabel.text = ""
    }
    
    // Constant to store instruction message
    let message: String = "Before you take off on your space adventure, select your character below!"
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        instructionsLabel.animateLabel(Message: message, myLabel: instructionsLabel, imageView: backgroundImageView)
    }
    
}
