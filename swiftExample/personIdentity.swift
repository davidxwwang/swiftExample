//
//  personIdentity.swift
//  swiftExample
//
//  Created by david on 2016/11/22.
//  Copyright © 2016年 david. All rights reserved.
//

import UIKit

class personIdentity: NSObject {
    
    var name:String = "david"
    var age:intmax_t = 0
    
    init(name:String,age:intmax_t) {
        self.name = name;
        self.age = age;
    }
    
    deinit {
        
    }


}
