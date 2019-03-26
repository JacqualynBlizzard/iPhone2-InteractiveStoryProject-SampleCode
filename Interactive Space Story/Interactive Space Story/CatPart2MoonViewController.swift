//
//  CatPart2MoonViewController.swift
//  Interactive Space Story
//
//  Created by Jacqualyn Blizzard-Caron on 3/25/19.
//  Copyright © 2019 Jacqualyn Blizzard-Caron. All rights reserved.
//

import UIKit
import Foundation
class CatPart2MoonViewController: UIViewController {
    let backgroundImageView = UIImageView()
    
    @IBOutlet weak var catImageView: UIImageView!
    @IBOutlet weak var catStoryPart2MoonLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.setBackground(imageName: "moon", backgroundImageView: backgroundImageView, view: view)
        catStoryPart2MoonLabel.text = ""
    }

    let message: String = "I love the moon! It's made of cheese I hear, who doesn't love cheese?"
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        catStoryPart2MoonLabel.animateLabel(Message: message, myLabel: catStoryPart2MoonLabel, imageView: catImageView)
        catImageView.animate(imageView: catImageView, images: catImages)
    }
}
