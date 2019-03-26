//
//  DogPart2MarsViewController.swift
//  Interactive Space Story
//
//  Created by Jacqualyn Blizzard-Caron on 3/25/19.
//  Copyright © 2019 Jacqualyn Blizzard-Caron. All rights reserved.
//

import UIKit
import Foundation

class DogPart2MarsViewController: UIViewController {
    let backgroundImageView = UIImageView()
    
    @IBOutlet weak var dogImageView: UIImageView!
    @IBOutlet weak var dogStoryPart2MarsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.setBackground(imageName: "mars", backgroundImageView: backgroundImageView, view: view)
        dogStoryPart2MarsLabel.text = ""
    }
    
    let message: String = "We are about to reach Mars! Do you think we can find the Mars Rover? Maybe we could be friends?"
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        dogStoryPart2MarsLabel.animateLabel(Message: message, myLabel: dogStoryPart2MarsLabel, imageView: dogImageView)
        dogImageView.animate(imageView: dogImageView, images: dogImages)
    }

}
