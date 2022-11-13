//
//  Cell.swift
//  CollectionView_Final
//
//  Created by Raman Kozar on 13/11/2022.
//

import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var temperatureImage: UIImageView!
    @IBOutlet weak var smileImage: UIImageView!
    @IBOutlet weak var programmingLanguageImage: UIImageView!
    @IBOutlet weak var autoImage: UIImageView!
    @IBOutlet weak var socialNetworksImage: UIImageView!
    
    func setTemperatureImage(tempName: String) {
        setTheImage(type: "temperatureImage", imageName: tempName)
    }
    
    func setSmileImage(smileName: String) {
        setTheImage(type: "smileImage", imageName: smileName)
    }
    
    func setProgrammingLanguageImage(programmingLanguageName: String) {
        setTheImage(type: "programmingLanguageImage", imageName: programmingLanguageName)
    }
    
    func setAutoImage(autoName: String) {
        setTheImage(type: "autoImage", imageName: autoName)
    }
    
    func setSocialNetworksImage(socialNetworksName: String) {
        setTheImage(type: "socialNetworksImage", imageName: socialNetworksName)
    }
    
    func setTheImage(type: String, imageName: String) {
     
        if type == "temperatureImage" {
            temperatureImage.image = UIImage(named: imageName)
        }
        
        if type == "smileImage" {
            smileImage.image = UIImage(named: imageName)
        }
        
        if type == "programmingLanguageImage" {
            programmingLanguageImage.image = UIImage(named: imageName)
        }
        
        if type == "autoImage" {
            autoImage.image = UIImage(named: imageName)
        }
        
        if type == "socialNetworksImage" {
            socialNetworksImage.image = UIImage(named: imageName)
        }
        
    }
    
}
