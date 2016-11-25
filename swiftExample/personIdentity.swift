//
//  personIdentity.swift
//  swiftExample
//
//  Created by david on 2016/11/22.
//  Copyright © 2016年 david. All rights reserved.
//

import UIKit

protocol personIdentityProtocol {
    //var jiguan;
    var fullName :String{ set get};
    
    func isfromLanzhou() ->  Bool ;
}


class personIdentity: NSObject,personIdentityProtocol  {
    
    var name:String = "david"
    var age:intmax_t = 0
    var fullName: String = "liwang";
    
    func isfromLanzhou() -> Bool {
        return true
    }
    
    init(name:String,age:intmax_t) {
        self.name = name;
        self.age = age;
    }
    
    deinit {
    }

}
