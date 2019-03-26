//
//  DogPart1ViewController.swift
//  Interactive Space Story
//
//  Created by Jacqualyn Blizzard-Caron on 3/25/19.
//  Copyright © 2019 Jacqualyn Blizzard-Caron. All rights reserved.
//

import UIKit
import Foundation

class DogPart1ViewController: UIViewController {
    let backgroundImageView = UIImageView()
    
    @IBOutlet weak var dogImageView: UIImageView!
    @IBOutlet weak var dogStoryPart1Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.setBackground(imageName: "earth", backgroundImageView: backgroundImageView, view: view)
        dogStoryPart1Label.text = ""
    }
    
    let message = "Hey there! My name is rover and I'm a space pup! Where do you think I should I take off to? Mars or the Moon?"
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        dogStoryPart1Label.animateLabel(Message: message, myLabel: dogStoryPart1Label, imageView: dogImageView)
        dogImageView.animate(imageView: dogImageView, images: dogImages)
    }

}
