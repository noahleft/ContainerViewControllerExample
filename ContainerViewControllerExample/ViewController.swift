//
//  ViewController.swift
//  ContainerViewControllerExample
//
//  Created by lin shih-feng on 4/27/15.
//  Copyright (c) 2015 lin shih-feng. All rights reserved.
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

    @IBOutlet var DisplayLabel: UILabel!
    var extend1: ExtendViewController!
    var extend2: ExtendViewController!

    @IBAction func pressButton1(sender: AnyObject) {
        DisplayLabel.text = "press button 1 #:\(extend1.counter)"
    }
    
    @IBAction func pressButton2(sender: AnyObject) {
        DisplayLabel.text = "press button 2 #:\(extend2.counter)"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "container1" {
            extend1 = segue.destinationViewController as! ExtendViewController
        }
        else if segue.identifier == "container2" {
            extend2 = segue.destinationViewController as! ExtendViewController
        }
    }
    
}

