//
//  CatPart2MarsViewController.swift
//  Interactive Space Story
//
//  Created by Jacqualyn Blizzard-Caron on 3/25/19.
//  Copyright © 2019 Jacqualyn Blizzard-Caron. All rights reserved.
//

import UIKit
import Foundation

class CatPart2MarsViewController: UIViewController {
    let backgroundImageView = UIImageView()
    
    @IBOutlet weak var catImageView: UIImageView!
    @IBOutlet weak var catStoryPart2MarsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.setBackground(imageName: "mars", backgroundImageView: backgroundImageView, view: view)
        catStoryPart2MarsLabel.text = ""
    }
    
     let message: String = "Mars, the red planet. The temperature fluctuates a lot here, but maybe I'll find Matt Damon?"
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        catStoryPart2MarsLabel.animateLabel(Message: message, myLabel: catStoryPart2MarsLabel, imageView: catImageView)
        catImageView.animate(imageView: catImageView, images: catImages)
    }
    

}
