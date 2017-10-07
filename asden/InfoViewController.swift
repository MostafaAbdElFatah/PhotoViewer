//
//  InfoViewController.swift
//  PhotoViewter
//
//  Created by Mostafa on 7/16/17.
//  Copyright © 2017 Mostafa. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    var CurrentPhoto:Photo?
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textLabel.text = self.CurrentPhoto?.info
    }
    @IBAction func Ok_btnClicked(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
