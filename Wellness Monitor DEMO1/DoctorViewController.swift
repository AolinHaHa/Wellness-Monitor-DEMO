//
//  DoctorViewController.swift
//  Wellness Monitor DEMO1
//
//  Created by Yang Aolin on 7/20/17.
//  Copyright © 2017 Aolin Yang. All rights reserved.
//

import UIKit

class DoctorViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier=="showDateDoctor"){
            let nextController = segue.destination as! DoctorDetailViewController
            nextController.dateToDisplay = dateSelected
        }
        if (segue.identifier=="showDateDoctor2"){
            let nextController = segue.destination as! DoctorDetail2ViewController
            nextController.dateToDisplay = dateSelected
        }
    }
    
    @IBOutlet weak var b1: UIButton!
    var dateSelected:String = ""
    
    
    @IBAction func dateAction(_ sender: Any) {
        let componenets = Calendar.current.dateComponents([.year, .month, .day], from: (sender as AnyObject).date)
        if let day = componenets.day, let month = componenets.month, let year = componenets.year {
            print("\(day)\(month)\(year)")
            dateSelected = "\(day)/\(month)/\(year)"
            print(dateSelected)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
