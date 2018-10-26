//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Sarah Wooldridge on 10/25/18.
//  Copyright © 2018 Sarah Wooldridge. All rights reserved.
//

import UIKit

class ConversionsViewController: UIViewController {
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    
    
    @IBAction func converterButtonAction(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: "Choose Converter", preferredStyle: .actionSheet)
        
        
        
        
        
        
        for x in 0..<converterArray.count {
            actionSheet.addAction(UIAlertAction(title: converterArray[x].label, style: .default , handler:{ (UIAlertAction)in
                self.changeConverter(index: x)
            }))
        }
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    struct Converter {
        var label: String?
        var inputUnit: String?
        var outputUnit: String?
    }
    
    
    
    
    let c1 = Converter(label: "fahrenheit to celcius",
                       inputUnit: "°F",
                       outputUnit: "°C")
    let c2 = Converter(label: "celcius to fahrenheit",
                       inputUnit: "°C",
                       outputUnit: "°F")
    let c3 = Converter(label: "miles to kilometers",
                       inputUnit: "mi",
                       outputUnit: "km")
    let c4 = Converter(label: "kilometers to miles",
                       inputUnit: "km",
                       outputUnit: "mi")
    
    
    
    
    lazy var converterArray = [c1,c2,c3,c4]
    var currentConverter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    
    func changeConverter(index: Int) {
        inputDisplay.text = converterArray[index].inputUnit
        outputDisplay.text = converterArray[index].outputUnit
        currentConverter = index
    }
    
    
}
