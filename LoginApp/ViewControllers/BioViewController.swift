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
    var photo: String!
    var bio: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moreInfoButton.setTitle("Photos", for: .normal)
        getInfo()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let photosVC = segue.destination as? PhotosTableViewController else { return }

                photosVC.cellCount = user.person.album.photoOfAchievement.count
                photosVC.photo = user.person.album.photoOfAchievement
                photosVC.photoDescription = user.person.album.descriptionOfAchievements
    }
    
    private func getInfo() {
        photoView.image = UIImage(imageLiteralResourceName: photo)
        bioLabel.text = bio
    }

}
