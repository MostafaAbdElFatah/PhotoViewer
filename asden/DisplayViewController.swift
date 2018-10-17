//
//  DetailViewController.swift
//  PhotoViewter
//
//  Created by Mostafa on 7/16/17.
//  Copyright © 2017 Mostafa. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    var CurrentPhoto:Photo?
    @IBOutlet weak var imagePhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagePhoto.image = UIImage(named: (CurrentPhoto?.image)!)
        self.title = self.CurrentPhoto?.name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextScene = segue.destination as! InfoViewController
        nextScene.CurrentPhoto = self.CurrentPhoto
    }

}

