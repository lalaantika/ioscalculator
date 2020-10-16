//
//  ViewController.swift
//  calculator
//
//  Created by student on 2020-10-09.
//

import UIKit

class ViewController: UIViewController {
    var number:Double  = 0;
    var previousNum:Double = 0;
    var status = false;
    var operator_entered = 0;
    @IBOutlet weak var display: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if status == true{
            display.text =  String(sender.tag-1)
            number = Double(display.text!)!
            status = false
        }else{
        display.text = display.text! + String(sender.tag-1)
        number = Double(display.text!)!
        }
    }
    
    @IBAction func Buttons(_ sender: UIButton) {
//        var res:Double = 0;
        if display.text != ""  && sender.tag != 11 && sender.tag != 12
        {
            previousNum = Double(display.text!)!
            if  sender.tag == 13 {
                display.text="+"
//                res = number + Double(display.text!)!
//                display.text = String(res)
                
            }
            else if sender.tag == 14{
                display.text="-"
//                res = number - Double(display.text!)!
//                display.text = String(res)
            }
            else if sender.tag == 15{
                display.text="*"
//                res = number * Double(display.text!)!
//                display.text = String(res)
            }
            else if sender.tag == 16{
                display.text="÷"
//                res = number / Double(display.text!)!
//                display.text = String(res)
            }
            operator_entered = sender.tag
            status = true
        }
    else if  sender.tag == 12 {
            if operator_entered == 13{
                display.text = String(previousNum+number)
            }
        if operator_entered == 14{
            display.text = String(previousNum-number)
        }
        if operator_entered == 15{
            display.text = String(previousNum*number)
        }
        if operator_entered == 16{
            display.text = String(previousNum/number)
        }
    }
    else if sender.tag==11{
        display.text=""
        number=0
        previousNum=0
        operator_entered=0
    }
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

