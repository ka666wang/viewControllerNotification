//
//  ViewController.swift
//  appDelegate
//
//  Created by Steven Wang on 2016/5/10.
//  Copyright © 2016年 ka666wang. All rights reserved.
//

import UIKit

var appcount : Int = 0


class ViewController: UIViewController {

    
    @IBOutlet weak var countLabel: UILabel!
    
    func increase() {
        appcount = appcount + 2
        countLabel.text = String(appcount)
        
    }
    
    func decrease(){
        appcount = appcount - 1
        countLabel.text = String(appcount)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector (ViewController.increase), name: UIApplicationDidBecomeActiveNotification , object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.decrease), name: UIApplicationDidEnterBackgroundNotification, object: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

