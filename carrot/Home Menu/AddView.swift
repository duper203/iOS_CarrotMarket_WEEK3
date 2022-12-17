//
//  AddView.swift
//  carrot
//
//  Created by 김혜수 on 2022/11/03.
//

import Foundation
import UIKit

class AddView: UIViewController{
    
    
    @IBOutlet weak var productName: UITextField!
    @IBOutlet weak var productPrice: UITextField!
    @IBOutlet weak var productPlace: UITextField!
    @IBOutlet weak var productImage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addBtn(_ sender: Any) {
        
        let addTitle = productName.text!
        let addPrice = productPrice.text!
        let addPlace = productPlace.text!
        let addImage = productImage.text!
        
//        let item: Product = Product(imageName: addImage, title: addTitle, place:addPlace, price: addPrice)
//
//        list.append(item)
//        print(list)
        
        titleLabel.append(addTitle)
        priceLabel.append(addPrice)
        placeLabel.append(addPlace)
        img.append(addImage)
        
        print(titleLabel)
        print(priceLabel)
        print(placeLabel)
        print(img)
        
        dismiss(animated: true, completion: nil)

    }
    
    
//    //시도
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "addSegue"{
//            let nextVC = segue.destination as? ViewController
//
//    //        titleLabel.append(addTitle!)
//    //        priceLabel.append(addPrice!)
//
//
//            nextVC?.addTitle = productName.text
//            nextVC?.addPrice = productPrice.text
//
//
//        }
//    }
//
    
}
