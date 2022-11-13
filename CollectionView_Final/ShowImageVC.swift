//
//  ShowImageVC.swift
//  CollectionView_Final
//
//  Created by Raman Kozar on 13/11/2022.
//

import UIKit

class ShowImageVC: UIViewController {

    @IBOutlet weak var currentImage: UIImageView!
    
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentImage.image = UIImage(named: imageName)
        
    }
    
    func setImageName(name: String) {
        imageName = name
    }

}
