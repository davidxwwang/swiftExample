//
//  Functions.swift
//  swiftExample
//
//  Created by david on 2016/11/25.
//  Copyright © 2016年 david. All rights reserved.
//

import UIKit

class Functions: NSObject {
    
    func greet(string :String) -> String {
        return "hello" + string + "ketty"
    }
    
    //该方法的返回值类型是个方法
    func greet1(string :String) -> (String) ->String {
        return greet // greet也是个方法
    }

    //返回一个元组, 打了？ 说明返回值可以为nil
    func minMax(array: [Int]) -> (min: Int, max: Int)? {
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            } }
        //return nil;
        return (currentMin, currentMax)
    }
    
    
    //可变参数，这个不错
    func arrayMean(elements:Double...) -> Double {
        var total: Double = 0
        for number in elements {
            total += number
        }
        return total / Double(elements.count)
    }
    
    func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
        print("Result: \(mathFunction(a, b))")
    }
    
    func addTwoInts( a:Int, b: Int) -> Int  {
        return a + b;
    }
    
    //方法作为参数，作为返回值,forIncrement 参数标签
    func makeIncrementer(forIncrement amount: Int) -> () -> Int {
        var runningTotal = 4
        
        func incrementer() -> Int {
            print(runningTotal);
            
            runningTotal += amount
            return runningTotal
        }
        return incrementer
    }

    
    override init() {
        super.init()
        
        let myArray = [1,3,2,4,7,4];
        if let bounds = minMax(array: myArray) //可选绑定
        {
             print("min is \(bounds.min) and max is \(bounds.max)")
        }
        
        let xyz = self.arrayMean(elements: 1,3,6,4,5);
        let xcv = self.arrayMean(elements: 1,4);
        
        //function 是个方法指针
        var function : ( _ array:[Int]) -> (min :Int ,max:Int)? = minMax
        if let bounds2 = function(myArray) //可选绑定
        {
            print("min is \(bounds2.min) and max is \(bounds2.max)")
        }
        
        //函数指针作为形参传递，当然闭包也是可以的
        self.printMathResult(addTwoInts, 3, 5)
        self.printMathResult({ (a:Int, b: Int) -> Int in return  a/b;}, 5, 5)
        
        let xx = self.makeIncrementer(forIncrement: 10);//XX是一个方法
        let yy = xx(); //14
        let zz = xx(); //24
        

        
    }

}
