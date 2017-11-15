//
//  ViewController.swift
//  swift_inout
//
//  Created by 刘渊 on 2017/8/11.
//  Copyright © 2017年 刘渊. All rights reserved.
/*
 1.值类型:传递的是参数的一个副本,在调用参数的过程中不会影响原始数据
 2.引用类型:把参数本身引用(内存地址)传递过去,在调用的过程中会影响原始数据

 在Swift众多数据类型中,只有inout是引用类型
 其余的如Int,Float,Bool,Character,Array,Set,enum,struct全都是值类型.
 */

/*
 让值类型以引用方式传递
 
 有时候我们需要通过一个函数改变函数外面变量的值(将一个值类型参数以引用方式传递)，
 这时，Swift提供的inout关键字就可以实现。
 */

import UIKit


class ViewController: UIViewController {
    
    var value = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(value)
        //50
        
        //value是内部参数
        func increment(ss value:inout Int, length:Int = 10){
            value += length
        }
        
        
//        increment(value: &value)
        
        //ss是外部参数
        increment(ss: &value)
        
        print(value)
        //60
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

