//
//  CatPart1ViewController.swift
//  Interactive Space Story
//
//  Created by Jacqualyn Blizzard-Caron on 3/25/19.
//  Copyright © 2019 Jacqualyn Blizzard-Caron. All rights reserved.
//

import UIKit
import Foundation

class CatPart1ViewController: UIViewController {

    let backgroundImageView = UIImageView()
    
    @IBOutlet weak var catImageView: UIImageView!
    @IBOutlet weak var catStoryPart1Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.setBackground(imageName: "earth", backgroundImageView: backgroundImageView, view: view)
        catStoryPart1Label.text = ""
    }
    
     let message = "Hey there! My name is kitty and I'm a space cat! Where do you think I should I take off to? Mars or the Moon?"
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        catStoryPart1Label.animateLabel(Message: message, myLabel: catStoryPart1Label, imageView: catImageView)
        catImageView.animate(imageView: catImageView, images: catImages)
    }
    
}
