//
//  ViewController.swift
//  chessTimer
//
//  Created by Sumaiya Mohamed on 3/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ountDownLabel: UILabel!
    
    @IBOutlet weak var countDownLableTwo: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
   
    @objc func well(){
        
        print("lll")
         five -= 1
        if five <= 0{
            print("game over")
        }
        countDownLableTwo.text = "\(five)"
    }
    @objc func woooow() {
     print("kk")
      six -= 1
        if six <= 0{
            print("game over")
        }
     ountDownLabel.text = "\(six)"
                
            }
 
        
var timer = Timer()
var timer2 = Timer()
var five = 10
var six = 10
var T = true

    @IBAction func Start(_ sender: UIButton) {
        if T == true  {
            timer.invalidate()
            
timer2 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(well), userInfo: nil, repeats: true)
            T = false
        }else{
            
timer2.invalidate()
            
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(woooow), userInfo: nil, repeats: true)
            
            T = true
     
            
        }
    
        
    }
    
        
 
    
}
