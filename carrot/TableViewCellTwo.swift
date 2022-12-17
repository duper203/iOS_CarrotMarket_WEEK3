//
//  TableViewCellTwo.swift
//  carrot
//
//  Created by 김혜수 on 2022/11/04.
//

import Foundation
import UIKit

class TableViewCellTwo: UITableViewCell{
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    let cellName = "CollectionViewCell" //class이름
    let cellReuseIdentifier = "iconCell" // cell reuseidentifier이름
    
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath) as? CollectionViewCell else{
            return UICollectionViewCell()
        }
        
        let target = data[indexPath.row]
        let img = UIImage(named: "\(target.imageName).png")
        
        cell.iconImg?.image = img
        cell.iconTitle.text = target.title
        
        return cell
    }
    
    
    //1. 더미데이터를 준비
    struct icon{
        let imageName:String
        let title:String
    }
  
    var data = [
            icon(imageName:"carrotgroup", title: "당근모임"),
            icon(imageName:"together", title: "같이해요")
        ]
    
    func setCV(){
         collectionView.delegate = self
         collectionView.dataSource = self
         registerXib()
    }
   
    
    func registerXib(){
        let nibName = UINib(nibName: cellName, bundle: nil)
        collectionView.register(nibName, forCellWithReuseIdentifier: cellReuseIdentifier)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
