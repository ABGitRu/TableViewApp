//
//  DetailViewController.swift
//  TableViewApp
//
//  Created by Mac on 04.04.2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var photo: UIImageView!
    @IBOutlet var descriptionOfPhoto: UILabel!
    
    var photoTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photo.image = UIImage(imageLiteralResourceName: photoTitle)
        descriptionOfPhoto.text = photoTitle
    }
}
