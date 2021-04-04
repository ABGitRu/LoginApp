//
//  BioViewController.swift
//  LoginApp
//
//  Created by Mac on 02.04.2021.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var photoView: UIImageView!
    @IBOutlet var bioLabel: UILabel!
    @IBOutlet var moreInfoButton: UIButton!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moreInfoButton.setTitle("Photos", for: .normal)
        getInfo()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let photosVC = segue.destination as? PhotosTableViewController else { return }
        
        photosVC.cellCount = User.getImages().count
        photosVC.photo = User.getImages()
        photosVC.photoDescription = User.getImageDesriptions()
    }
    
    private func getInfo() {
        photoView.image = UIImage(imageLiteralResourceName: User.getPhoto())
        bioLabel.text = User.getBio()
    }

}
