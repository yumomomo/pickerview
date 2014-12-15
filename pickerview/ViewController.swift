//
//  ViewController.swift
//  pickerview
//
//  Created by ＹＵＭＯ on 7/12/2014.
//  Copyright (c) 2014年 ＹＵＭＯ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var itemLabel: UILabel!
    
    var GIRLFRIEND = ["VIVI", "CICI", "ANGELBB", "BIBI"]
    override func viewDidLoad() {
        super.viewDidLoad()
        itemLabel.text = GIRLFRIEND[0]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
        }
        func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
            return GIRLFRIEND[row]
        }
        func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
            return GIRLFRIEND[row]
        }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        var itemSelected = GIRLFRIEND[row]
        itemLabel.text = itemSelected
    }
}

