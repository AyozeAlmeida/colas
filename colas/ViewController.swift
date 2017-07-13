//
//  ViewController.swift
//  colas
//
//  Created by Loquat Solutions on 13/7/17.
//  Copyright © 2017 MHP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colayo = Queue<Int>()
        
        let item1: Int =  4
        let item2: Int = 5
        let item3: Int = 9
        
        colayo.enQueue(key: item1)
        colayo.enQueue(key: item3)
        colayo.enQueue(key: item2)

        print(colayo.deQueue() ?? "fallo")
        
        
        
        
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

