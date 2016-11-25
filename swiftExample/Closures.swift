//
//  Closures.swift
//  swiftExample
//
//  Created by david on 2016/11/24.
//  Copyright © 2016年 david. All rights reserved.
//  闭包可以认为是个匿名函数

import UIKit

class Closures: NSObject {
    
    func backward(s1:String, s2:String) -> Bool {
        return s1 > s2
    }
    
    
    func test() -> Void {
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"];
        var reversedNames = names.sorted(by: backward)
        
        var reversedNames2 = names.sorted( by:
                                             {
                                                (s1:String,s2:String ) -> Bool in  return s1>s2
                                             }
                                         ) //内联闭包
        
        
        var reversedNames3 = names.sorted( by:
            {
                (s1,s2 ) -> Bool in  return s1>s2
            }
        ) //swift可以根据调用者自动判断s1，s2类型
        
        
    }
    
    //尾随闭包是一个书写在函数括号之后的闭包表达式，函数支持将其作为最后一个参数调用
    func calculate(opr: String, funN:(Int, Int) -> Int) {
        //最后一个参数funN是(Int,Int)-> Int函数类型，funN可以接收闭包表达式
        
        switch (opr) {
        case "+" :
            print("10 + 5 = \(funN(10,5))")
        default:
            print("10 - 5 = \(funN(10,5))")
        }
    }
    
    override init() {
        super.init();
        self.calculate(opr: "+"){
                                   (a: Int, b: Int) -> Int in
                                      let c = a + b;
                                      return c
                                } //调用，这种形式就是尾随闭包,提高程序可读性,该闭包作为函数的形参传递
        
    
    }
    
}
