//
//  DetailViewController.swift
//  Workout Guide
//
//  Created by AP-Cheslau Gerasimovitch on 8/7/17.
//  Copyright © 2017 AP-Cheslau Gerasimovitch. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = appColor
        let imgView = view.viewWithTag(6) as! UIImageView
        let workoutImage = UIImage(named: detailsArray[0])
        imgView.image = workoutImage
        
        let descTxtView = view.viewWithTag(7) as! UITextView
        descTxtView.text = detailsArray[1]
    }

}
