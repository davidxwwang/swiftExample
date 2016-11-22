//
//  ViewController.swift
//  swiftExample
//
//  Created by david on 2016/11/13.
//  Copyright © 2016年 david. All rights reserved.
//

import UIKit
//import personIdentity

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var _person = personIdentity(name:"xxx",age:10);
        
        
//        let size2 = MemoryLayout<PointClass>.size;
//        print(size2);
        
        let names = ["John", "Paul", "George", "Ringo", "Mick", "Keith", "Charlie", "Ronnie"]
        var stringSet = Set<String>() // 1
        var loopsCount = 0
        while stringSet.count < 4 {
            let randomNumber = arc4random_uniform(UInt32(names.count)) // 2
            let randomName = names[Int(randomNumber)] // 3
            print(randomName) // 4
            stringSet.insert(randomName) // 5
            loopsCount += 1 // 6
        }
    
        // 7
        print("Loops: " + loopsCount.description + ", Set contents: " + stringSet.description)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


