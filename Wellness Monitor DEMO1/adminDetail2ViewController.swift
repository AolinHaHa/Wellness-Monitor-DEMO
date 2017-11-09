//
//  adminDetailViewController.swift
//  Wellness Monitor DEMO1
//
//  Created by Yang Aolin on 8/3/17.
//  Copyright © 2017 Aolin Yang. All rights reserved.
//

import UIKit

class adminDetailView2Controller: UIViewController,UITableViewDelegate, UITableViewDataSource {
    var dateToDisplay : String = ""
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var mTableView: UITableView!
    @IBOutlet weak var DetailButton: UIButton!
    
    var items: [String] = ["Amanda Smith","John Borer","Deanna Duffy", "Michael Strop", "Jaime Filler", "Connor May", "Katie Webber", "Ryan Bill", "Marc Jacobs","Steve Walt", "Steve Jobs", "Bill Gates", "Mark Cuban"]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        dateLabel.text = "Report Date: \(dateToDisplay) "
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        DetailButton.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.mTableView.dequeueReusableCell(withIdentifier: "cell")!
        
        cell.textLabel?.text = self.items[indexPath.row]
        print(self.items[indexPath.row])
        
        return cell
    }
    func showAlert(withTitle title: String?, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You have selected cell #\(indexPath.row)!")
        let msg = " \(items[indexPath.row]): registered user"
        DetailButton.isHidden = false
        //showAlert(withTitle:"Detail Info", message: msg)
    }
    
}
