//
//  CardsViewController.swift
//  Tinder
//
//  Created by Claudiu Andrei on 11/10/16.
//  Copyright © 2016 Claudiu Andrei. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var imageCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func panGesture(_ sender: UIPanGestureRecognizer) {

        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
