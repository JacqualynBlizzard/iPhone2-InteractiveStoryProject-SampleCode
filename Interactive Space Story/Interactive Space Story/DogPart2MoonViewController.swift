//
//  DogPart2MoonViewController.swift
//  Interactive Space Story
//
//  Created by Jacqualyn Blizzard-Caron on 3/25/19.
//  Copyright © 2019 Jacqualyn Blizzard-Caron. All rights reserved.
//

import UIKit
import Foundation

class DogPart2MoonViewController: UIViewController {
    let backgroundImageView = UIImageView()
    
    @IBOutlet weak var dogImageView: UIImageView!
    @IBOutlet weak var dogStoryPart2MoonLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.setBackground(imageName: "moon", backgroundImageView: backgroundImageView, view: view)
        dogStoryPart2MoonLabel.text = ""
    }
    let message: String = "I love the moon! You can get a great view of Earth from here."
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        dogStoryPart2MoonLabel.animateLabel(Message: message, myLabel: dogStoryPart2MoonLabel, imageView: dogImageView)
        dogImageView.animate(imageView: dogImageView, images: dogImages)
    }

}
