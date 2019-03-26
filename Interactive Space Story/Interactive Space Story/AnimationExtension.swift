//
//  AnimationExtension.swift
//  Interactive Space Story
//
//  Created by Jacqualyn Blizzard-Caron on 3/26/19.
//  Copyright © 2019 Jacqualyn Blizzard-Caron. All rights reserved.
//

import Foundation
import UIKit

// Animating the text
extension UILabel {
    func animateLabel(Message: String, myLabel: UILabel, imageView: UIImageView) {
        myLabel.text = ""
        let characterArray = Array(Message)
        var characterIndex = 0
        Timer.scheduledTimer(withTimeInterval: 0.025, repeats: true, block: { timer in
            if characterIndex < characterArray.count {
                let char = characterArray[characterIndex]
                myLabel.text! += "\(char)"
                characterIndex += 1
            } else {
                timer.invalidate()
                // This makes the animation stop when the text is done
                imageView.stopAnimating()
            }
        })
    }
}

// Extension 1 - Animating the animal image view
var dogImages: [UIImage] = [UIImage(named: "dog-talking1")!, UIImage(named: "dog-talking2")!]
var catImages: [UIImage ] = [UIImage(named: "cat-talking1")!, UIImage(named: "cat-talking2")!]

extension UIImageView {
    func animate(imageView: UIImageView, images: [UIImage]) {
        imageView.animationImages = images
        imageView.animationDuration = 0.5
        imageView.startAnimating()
    }
}
