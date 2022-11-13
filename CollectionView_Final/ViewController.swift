//
//  ViewController.swift
//  CollectionView_Final
//
//  Created by Raman Kozar on 13/11/2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionViewOne: UICollectionView!
    @IBOutlet weak var collectionViewTwo: UICollectionView!
    @IBOutlet weak var collectionViewThree: UICollectionView!
    @IBOutlet weak var collectionViewFour: UICollectionView!
    @IBOutlet weak var collectionViewFive: UICollectionView!
    
    let arrayTemperature = ["temp.blackGreen", "temp.darkYellow", "temp.green", "temp.lightYellow", "temp.orange", "temp.red"]
    let arraySmiles = ["nice", "notPleasant", "routine", "bad", "favorite", "hate"]
    let arrayProgrammingLanguages = ["temp2_1c", "temp2_java", "temp2_js", "temp2_ruby", "temp2_swift"]
    let arrayAutos = ["temp3_audi", "temp3_bmw", "temp3_chevrolet", "temp3_mercedes", "temp3_renault"]
    let arraySocialNetworks = ["temp4_discord", "temp4_facebook", "temp4_instagram", "temp4_snapchat", "temp4_vk", "temp4_twitter"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionViewOne.backgroundColor = UIColor(named: "White")
        self.collectionViewTwo.backgroundColor = UIColor(named: "White")
        self.collectionViewThree.backgroundColor = UIColor(named: "White")
        self.collectionViewFour.backgroundColor = UIColor(named: "White")
        self.collectionViewFive.backgroundColor = UIColor(named: "White")
        
        initializeAllTheCollectionViewes()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let viewCountoller = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as? ShowImageVC
                else { return }
        
        var currentSelectedImage: String!
        
        currentSelectedImage = getCurrentSelectedImage(collectionView, collectionViewOne, collectionViewTwo, collectionViewThree, collectionViewFour, collectionViewFive, indexPath)
        
        viewCountoller.setImageName(name: currentSelectedImage)
        
        present(viewCountoller, animated: true, completion: nil)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        var returnCount: Int = 0
        
        if collectionView == collectionViewOne {
            returnCount = arrayTemperature.count
        } else if collectionView == collectionViewTwo {
            returnCount = arraySmiles.count
        } else if collectionView == collectionViewThree {
            returnCount = arrayProgrammingLanguages.count
        } else if collectionView == collectionViewFour {
            returnCount = arrayAutos.count
        } else if collectionView == collectionViewFive {
            returnCount = arraySocialNetworks.count
        } else {
            returnCount = 0
        }
        
        return returnCount
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var returnCell: UICollectionViewCell = UICollectionViewCell()
        
        if collectionView == collectionViewOne {
        
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as? Cell {
                let imageName = arrayTemperature[indexPath.row]
                cell.setTemperatureImage(tempName: imageName)
                returnCell = cell
            }
            
        }
        
        if collectionView == collectionViewTwo {
        
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTwo", for: indexPath) as? Cell {
                let imageName = arraySmiles[indexPath.row]
                cell.setSmileImage(smileName: imageName)
                returnCell = cell
            }
            
        }
        
        if collectionView == collectionViewThree {
        
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellThree", for: indexPath) as? Cell {
                let imageName = arrayProgrammingLanguages[indexPath.row]
                cell.setProgrammingLanguageImage(programmingLanguageName: imageName)
                returnCell = cell
            }
            
        }
        
        if collectionView == collectionViewFour {
        
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellFour", for: indexPath) as? Cell {
                let imageName = arrayAutos[indexPath.row]
                cell.setAutoImage(autoName: imageName)
                returnCell = cell
            }
            
        }
        
        if collectionView == collectionViewFive {
        
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellFive", for: indexPath) as? Cell {
                let imageName = arraySocialNetworks[indexPath.row]
                cell.setSocialNetworksImage(socialNetworksName: imageName)
                returnCell = cell
            }
            
        }
        
        return returnCell
        
    }
    
    func initializeAllTheCollectionViewes() {
    
        collectionViewOne.delegate = self
        collectionViewOne.dataSource = self
        
        collectionViewTwo.delegate = self
        collectionViewTwo.dataSource = self
        
        collectionViewThree.delegate = self
        collectionViewThree.dataSource = self
        
        collectionViewFour.delegate = self
        collectionViewFour.dataSource = self
        
        collectionViewFive.delegate = self
        collectionViewFive.dataSource = self
        
    }
    
    func getCurrentSelectedImage(_ collectionView: UICollectionView, _ collectionViewOne: UICollectionView, _ collectionViewTwo: UICollectionView, _ collectionViewThree: UICollectionView, _ collectionViewFour: UICollectionView, _ collectionViewFive: UICollectionView, _ indexPath: IndexPath) -> String {
        
        var currentSelectedImage: String = ""
        
        if collectionView == collectionViewOne {
            currentSelectedImage = arrayTemperature[indexPath.row]
        }
        
        if collectionView == collectionViewTwo {
            currentSelectedImage = arraySmiles[indexPath.row]
        }
        
        if collectionView == collectionViewThree {
            currentSelectedImage = arrayProgrammingLanguages[indexPath.row]
        }
        
        if collectionView == collectionViewFour {
            currentSelectedImage = arrayAutos[indexPath.row]
        }
        
        if collectionView == collectionViewFive {
            currentSelectedImage = arraySocialNetworks[indexPath.row]
        }
        
        return currentSelectedImage
        
    }

}

