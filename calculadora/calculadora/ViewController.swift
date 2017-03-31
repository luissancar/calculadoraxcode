//
//  ViewController.swift
//  calculadora
//
//  Created by Luis José Sánchez Carrasco on 31/3/17.
//  Copyright © 2017 Luis José Sánchez Carrasco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultado: UILabel!
    var result:Float = 0
    var actual:Float = 0
    var operacion:String=""
    var nada:Int=0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultado.text="0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func operacion(_ sender: UIButton) {
        switch sender.titleLabel!.text! {
        case "CE":
            result=0
            actual=0
            operacion=""
            resultado.text="0"
        case "+":
             result=actual
             actual=0
             operacion="+"
        case "-":
            result=actual
            actual=0
            operacion="-"
        case "*":
            result=actual
            actual=0
            operacion="*"
        case "/":
            result=actual
            actual=0
            operacion="/"

            
            
        case "=":
           
            switch operacion {
            case "+":
                
                resultado.text="\(result+actual)"
                actual=result+actual
                
            case "-":
                
                resultado.text="\(result-actual)"
                actual=result-actual
                
            case "*":
                
                resultado.text="\(result*actual)"
                actual=result*actual
                
            case "/":
                
                resultado.text="\(result/actual)"
                actual=result/actual
                

                
                
            default:
                nada=0
            }
        default:
            nada=0
        }
    }
    @IBAction func numero(_ sender: UIButton) {
        actual=actual*10+Float(Int(sender.titleLabel!.text!)!)
        resultado.text="\(actual)"
    }
}

