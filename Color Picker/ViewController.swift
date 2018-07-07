//
//  ViewController.swift
//  Color Picker
//
//  Created by Ethan Schutzenhofer on 7/7/18.
//  Copyright © 2018 Ethan Schutzenhofer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var detailLabel: UILabel!
    private let dataSource = ["Green", "Red", "Blue", "Purple", "Orange"]
    
    var colors = [Color(name: "Red", uiColor : UIColor.red),
                  Color(name: "Green", uiColor : UIColor.green),
                  Color(name: "Yellow", uiColor : UIColor.yellow),
                  Color(name : "Purple", uiColor : UIColor.purple),
                  Color(name : "Blue", uiColor : UIColor.blue),
                  Color(name : "Orange", uiColor : UIColor.orange)
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerView.dataSource = self
        pickerView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController : UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        detailLabel.text = dataSource[row]
        //self.view.backgroundColor = colors.name
        
    }
    
    
}
