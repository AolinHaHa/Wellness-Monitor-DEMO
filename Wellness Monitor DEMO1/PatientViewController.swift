//
//  PatientViewController.swift
//  Wellness Monitor DEMO1
//
//  Created by Yang Aolin on 7/13/17.
//  Copyright © 2017 Aolin Yang. All rights reserved.
//

import UIKit

class PatientViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource, UITextFieldDelegate{
    
    let PainPickerDataSource = ["0","1","2","3","4","5","6","7","8","9","10"];
    var url:NSURL = NSURL( string: "tel:1231231234")!
    @IBOutlet var SymtomTextField: UITextField!
    
    //@IBOutlet var SymptonTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.PainPicker.dataSource = self;
        self.PainPicker.delegate = self;
        self.SymtomTextField.delegate = self;
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    @IBOutlet var PainPicker: UIPickerView!
    

    //@IBOutlet var SymptonPicker: UIPickerView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func contactPressed(_ sender: Any) {
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)

    }
   

    func showAlert(withTitle title: String?, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    // The number of columns of data
    func numberOfComponents(in PainPicker: UIPickerView) -> Int {
        return 1
    }
    
    var painDes : String = ""
    
    // The number of rows of data
    func pickerView(_ PainPicker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return PainPickerDataSource.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ PainPicker: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (PainPickerDataSource[row] == "0"){
            painDes = "No Pain"
        }
        if (PainPickerDataSource[row] == "1"){
            painDes = "Mild Pain"
        }
        if (PainPickerDataSource[row] == "2"){
            painDes = "Mild Pain"
        }
        if (PainPickerDataSource[row] == "3"){
            painDes = "Moderate Pain"
        }
        if (PainPickerDataSource[row] == "4"){
            painDes = "Moderate Pain"
        }
        if (PainPickerDataSource[row] == "5"){
            painDes = "Severe Pain"
        }
        if (PainPickerDataSource[row] == "6"){
            painDes = "Severe Pain"
        }
        if (PainPickerDataSource[row] == "7"){
            painDes = "Very Severe Pain"
        }
        if (PainPickerDataSource[row] == "8"){
            painDes = "Very Severe Pain"
        }
        if (PainPickerDataSource[row] == "9"){
            painDes = "Very Severe Pain"
        }
        if (PainPickerDataSource[row] == "10"){
            painDes = "Worst Pain"
        }
        print (PainPickerDataSource[row])
        print(painDes)
        return PainPickerDataSource[row]

    }
    
    

    @IBAction func SubmitPressed(_ sender: Any) {
        var defSym = "(No Symptoms)"
        var defPain = "(No Pain)"
        var pain: String
        //pain = PainPicker.currentSelectedValue
        
        //let msg = "PainLevel: \(String(describing: pickerView(PainPicker, titleForRow: 0, forComponent: 0))) ,Symptoms:\(SymtomTextField.text ?? defSym)"
        let msg = "Pain Level: \(painDes) \r\n Symptoms: \(SymtomTextField.text ?? defSym)"
        
        showAlert(withTitle:"Message Sent", message: msg)
    }



}
