//
//  MasterViewController.swift
//  PhotoViewter
//
//  Created by Mostafa on 7/16/17.
//  Copyright © 2017 Mostafa. All rights reserved.
//

import UIKit

class PhotoTableViewController: UITableViewController {


    var cellData = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var newPhoto = Photo(name:"Phone",image:"01",info:"the is Smart Phone")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"SMS",image:"02",info:"the is SMS Photo")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo03",image:"03",info:"the is Good Photo 03")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo04",image:"04",info:"the is Good Photo 04")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo05",image:"05",info:"the is Good Photo 05")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo06",image:"06",info:"the is Good Photo 06")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo07",image:"07",info:"the is Good Photo 07")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo08",image:"08",info:"the is Good Photo 08")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo09",image:"09",info:"the is Good Photo 09")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo10",image:"10",info:"the is Good Photo 10")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo11",image:"11",info:"the is Good Photo 11")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo12",image:"12",info:"the is Good Photo 12")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo13",image:"13",info:"the is Good Photo 13")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo14",image:"14",info:"the is Good Photo 14")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo15",image:"15",info:"the is Good Photo 15")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo16",image:"16",info:"the is Good Photo 16")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo17",image:"17",info:"the is Good Photo 17")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo18",image:"18",info:"the is Good Photo 18")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo19",image:"19",info:"the is Good Photo 19")
        self.cellData.append(newPhoto)
        newPhoto = Photo(name:"Photo20",image:"20",info:"the is Good Photo 20")
        self.cellData.append(newPhoto)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextScene = segue.destination as! DisplayViewController
        if let indexPath = self.tableView.indexPathForSelectedRow {
            nextScene.CurrentPhoto = self.cellData[indexPath.row]
        }
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cellData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = self.cellData[indexPath.row].name
        return cell
    }
    
}

