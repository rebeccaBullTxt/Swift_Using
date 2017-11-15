//
//  ViewController.swift
//  关于UITextField处理
//
//  Created by 刘渊 on 2017/8/11.
//  Copyright © 2017年 刘渊. All rights reserved.
/*
    目标实现:数字键盘的限制位数处理,适合手机登录
 */

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var text_field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        text_field.delegate = self
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if (string as NSString).isEqual(to: "") {
            return true
        }
        
        if (textField.text! as NSString).length >= 11 {
            
            return false
        }
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

