//
//  CustomDraggableView.swift
//  Tinder
//
//  Created by Claudiu Andrei on 11/10/16.
//  Copyright © 2016 Claudiu Andrei. All rights reserved.
//

import UIKit

class CustomDraggableView: UIView, UIGestureRecognizerDelegate {
    
    var imageCenter: CGPoint!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        print(#function)
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(panGesture))
            panGestureRecognizer.delegate = self
        //panGestureRecognizer.addTarget(self, action: #selector(panGesture))
        self.addGestureRecognizer(panGestureRecognizer)
    }
    
    func panGesture(_ sender: UIPanGestureRecognizer) {
        print(#function)
        let translation = sender.translation(in: self)
        print("hello")
        if sender.state == .began {
            imageCenter = self.center
        } else if sender.state == .changed {
            UIView.animate(withDuration: 0.5, animations: {
            if translation.x > 81 {
                self.imageCenter.x = 500
            } else if translation.x < -81 {
                self.imageCenter.x = -500
            }
            if sender.location(in: self).y < 162 {
                if translation.x < 0 { //left
                    self.transform = CGAffineTransform(rotationAngle: CGFloat( (Double(translation.x) / 304) * (3 * M_PI_4)))
                } else { //right
                    self.transform = CGAffineTransform(rotationAngle: CGFloat( (Double(translation.x) / 304) * M_PI_4))
                }
            } else {
                if translation.x > 0 { //right
                    self.transform = CGAffineTransform(rotationAngle: CGFloat(-(Double(translation.x) / 304) * (3 * M_PI_4)))
                } else { //left
                    self.transform = CGAffineTransform(rotationAngle: CGFloat(-(Double(translation.x) / 304) * M_PI_4))
                }
            }
            self.center.x = self.imageCenter.x + translation.x
            })
        }
        
    }
}
