//
//  ExtendViewController.swift
//  ContainerViewControllerExample
//
//  Created by lin shih-feng on 4/27/15.
//  Copyright (c) 2015 lin shih-feng. All rights reserved.
//

import Foundation
import UIKit

class ExtendViewController: UIViewController {
    
    var counter=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
    }
    @IBOutlet var indexLabel: UILabel!
    
    @IBAction func pressButton(sender: AnyObject) {
        counter=counter+1
        updateLabel()
    }
    
    func updateLabel() {
        indexLabel.text="\(counter)"
    }
    

}
