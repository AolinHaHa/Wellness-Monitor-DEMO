//
//  adminWelcomeViewController.swift
//  Wellness Monitor DEMO1
//
//  Created by Yang Aolin on 8/3/17.
//  Copyright © 2017 Aolin Yang. All rights reserved.
//

import UIKit

class adminWelcomeViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showDate"){
            let nextController = segue.destination as! adminDetailViewController
            nextController.dateToDisplay = dateSelected
        }
        if (segue.identifier == "showDate2"){
            let nextController = segue.destination as! adminDetailView2Controller
            nextController.dateToDisplay = dateSelected
        }
    }
    
    
    var dateSelected:String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dateAction(_ sender: Any) {
        let componenets = Calendar.current.dateComponents([.year, .month, .day], from: (sender as AnyObject).date)
        if let day = componenets.day, let month = componenets.month, let year = componenets.year {
            print("\(day) \(month) \(year)")
            dateSelected = "\(day) / \(month) / \(year)"
            print(dateSelected)
        }
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
