//
//  cellDataController.swift
//  carrot
//
//  Created by 김혜수 on 2022/11/04.
//

import Foundation
import UIKit

class cellDataController: UIViewController{
    
    var prepareImgName: String?
    var labelOne: String?
    var labelTwo: String?
    var labelThree: String?
    var LabelFour:String?
    
    @IBOutlet weak var prepareImg: UIImageView!
    
    @IBOutlet weak var prepareLabelOne: UILabel!
    @IBOutlet weak var prepareLabelThree: UILabel!
    @IBOutlet weak var prepareLabelTwo: UILabel!
    
    @IBOutlet weak var prepareLabelFore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareImg.image = UIImage(named: prepareImgName!)
        prepareLabelOne.text = labelOne!
        prepareLabelTwo.text = labelTwo!
        prepareLabelThree.text = labelThree!
    }
}
