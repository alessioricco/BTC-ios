//
//  UIAutoLayoutViewController.swift
//  BTCos
//
//  Created by alessio ricco on 27/11/2016.
//  Copyright © 2016 alessio ricco. All rights reserved.
//

import Foundation
import UIKit
import Cartography


class UIAutoLayoutViewController: UIViewController {

    var constraintGroup: ConstraintGroup? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("didload")
        applyLayout()
    }
   
    func initLayoutLandscape() {
        if constraintGroup != nil {
            constrain(clear: constraintGroup!)
        }
        // do nothing
    };
    
    func initLayoutPortrait() {
        // do nothing
        if constraintGroup != nil {
            constrain(clear: constraintGroup!)
        }
    };
    
    private func applyLayout() {
        if UIDevice.current.orientation.isLandscape {
            print("landscape")
            initLayoutLandscape()
            return
        }
        if UIDevice.current.orientation.isPortrait {
            print("portrait")
            initLayoutPortrait()
            return
        }
        // flat
        print("flat")
        let bounds = UIScreen.main.bounds
        if bounds.width > bounds.height {
            initLayoutLandscape()
        } else {
            initLayoutPortrait()
        }
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        super.viewWillTransition(to: size, with: coordinator)
        
        print("willtransitionsto")
        
        applyLayout()
        
    }
}
