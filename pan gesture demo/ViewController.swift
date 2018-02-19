//
//  ViewController.swift
//  pan gesture demo
//
//  Created by Apoorv Mote on 04/10/15.
//  Copyright © 2015 Apoorv Mote. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func panYellowView(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: self.view)
//        debugPrint("X: \(translation.x)")
//        debugPrint("Y: \(translation.y)")
        
        let location = sender.location(in: self.view)
        debugPrint("X: \(location.x)")
        debugPrint("Y: \(location.y)")
        
        sender.view!.center = CGPoint(x: sender.view!.center.x + translation.x, y: sender.view!.center.y + translation.y)
        
        sender.setTranslation(CGPoint.zero, in: self.view)
        
    }

}

