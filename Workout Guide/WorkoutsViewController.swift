//
//  WorkoutsViewController.swift
//  Workout Guide
//
//  Created by AP-Cheslau Gerasimovitch on 8/3/17.
//  Copyright © 2017 AP-Cheslau Gerasimovitch. All rights reserved.
//

import UIKit

var detailsArray = [String]()

class WorkoutsViewController: UIViewController {
    var workoutDict = [String:[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Choose workout"
        let path = Bundle.main.path(forResource: "Workouts", ofType: "plist")
        if let validPath = path
        {
            let dict = NSDictionary(contentsOfFile: validPath)
            if let validDict = dict
            {
                workoutDict = validDict as! [String : [String]]
                let titleArrays = validDict.allKeys
                
                let AllView = view.subviews
                for i in 0..<AllView.count
                {
                    if AllView[i].tag == 10 //is UIButton
                    {
                        let button = AllView[i] as! UIButton
                        button.setTitle(titleArrays[i] as? String, for: .normal)
                        button.backgroundColor = UIColor(red:0.99, green:0.29, blue:0.34, alpha:1.00)
                        button.setTitleColor(UIColor.white, for: UIControlState.normal)
                        button.titleLabel?.font = UIFont(name:"HelveticaNeue-CondensedBold", size: 20)
                        button.layer.cornerRadius = 5
                        button.clipsToBounds = true
                        button.addTarget(self, action: #selector(WorkoutsViewController.goToDetails(sender:)), for: .touchUpInside)
                    }
                }

            }
        }
   }

    func goToDetails(sender:UIButton){
        if let title = sender.titleLabel?.text, let array = workoutDict[title]
        {
            detailsArray = array
            performSegue(withIdentifier: "details", sender: self)
            
        }
    }
    @IBAction func close (segue:UIStoryboardSegue)
    {
    }
}
