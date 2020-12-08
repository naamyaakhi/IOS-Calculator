//
//  ViewController.swift
//  Calculator
//
//  Created by Altamis Hail Ahsan Nasution on 11/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield1: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    
    @IBOutlet weak var hasil: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btntambah(_ sender: UIButton) {
        hitung(aritmatik: "+")
    }
    @IBAction func btnkurang(_ sender: UIButton) {
        hitung(aritmatik: "-")
    }
    @IBAction func btnkali(_ sender: UIButton) {
        hitung(aritmatik: "*")
    }
    @IBAction func btnbagi(_ sender: UIButton) {
        hitung(aritmatik: "/")
    }
    
    func hitung (aritmatik: String){
        if textfield1.text == "" || textfield2.text == ""{
            hasil.text = "kolomnya harus diisi"
        }else{
            let input1 = Double(textfield1.text!)
            let input2 = Double(textfield2.text!)
            var jumlah: Double?
            switch aritmatik {
            case "+":
                jumlah = input1! + input2!
            case"-":
                jumlah = input1! - input2!
            case"*":
                jumlah = input1! * input2!
            case "/":
                jumlah = input1! / input2!
            default:
                break
            }
            hasil.text = String(jumlah!)
        }
    }
}


