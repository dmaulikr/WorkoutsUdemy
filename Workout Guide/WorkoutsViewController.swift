//
//  WorkoutsViewController.swift
//  Workout Guide
//
//  Created by AP-Cheslau Gerasimovitch on 8/3/17.
//  Copyright © 2017 AP-Cheslau Gerasimovitch. All rights reserved.
//

import UIKit

class WorkoutsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "Workouts", ofType: "plist")
        if let validPath = path
        {
            let dict = NSDictionary(contentsOfFile: validPath)
            if let validDict = dict
            {
            print(validDict)
            }
        }
   }

}
