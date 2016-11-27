//
//  ViewController.swift
//
//  Created by alessio ricco on 26/11/2016.
//  Copyright © 2016 alessio ricco. All rights reserved.
//

import UIKit
import Cartography

class ViewController: UIAutoLayoutViewController {
    
    @IBOutlet weak var BTCValuesView: UIView!
    @IBOutlet weak var BTCChartView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func initLayoutPortrait() {
        
        super.initLayoutPortrait()
        
        constraintGroup = constrain(BTCValuesView, BTCChartView) {
            values, chart in
            
            values.left == (values.superview?.left)!
            values.right == (values.superview?.right)!
            values.top == (values.superview?.top)!
            values.height == (values.superview?.height)!/2
            
            chart.top == values.bottom
            chart.left == values.left
            chart.right == values.right
            chart.height == (values.superview?.height)!/2
            
        }
    }
    
    override func initLayoutLandscape() {
        
        super.initLayoutLandscape()
        
        constraintGroup = constrain(BTCValuesView, BTCChartView) {
            values, chart in
            
            values.top == (values.superview?.top)!
            values.left == (values.superview?.right)!/2
            values.right == (values.superview?.right)!
            values.bottom == (values.superview?.bottom)!
            
            chart.top == (values.superview?.top)!
            chart.left == (values.superview?.left)!
            chart.right == (values.superview?.right)!/2
            chart.bottom == (values.superview?.bottom)!
            
        }
    }
    
}

