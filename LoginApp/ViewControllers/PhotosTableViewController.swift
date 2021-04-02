//
//  PhotosTableViewController.swift
//  LoginApp
//
//  Created by Mac on 02.04.2021.
//

import UIKit

class PhotosTableViewController: UITableViewController {
    
    var cellCount: Int!
    var photoDescription: [String]!
    var photo: [String]!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellCount
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! PhotosTableViewCell
            
            cell.photoView.image = UIImage(imageLiteralResourceName: photo[indexPath.row])
        
            cell.desctiptionLabel.textColor = .white
            cell.desctiptionLabel.text = photoDescription[indexPath.row]
            
            return cell 
    }
}
