//
//  ViewControllerTwo.swift
//  carrot
//
//  Created by 김혜수 on 2022/11/04.
//

import Foundation
import UIKit

class ViewControllerTwo: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDelegate, UITableViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return dataTwo.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let writeList = dataTwo[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! TableViewCell
            
            cell.firstLabel?.text=writeList.tag
            cell.mainLabel?.text = writeList.main
            
            
        return cell
        
        
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
//    let cellName = "CollectionViewCell" //class이름
//    let cellReuseIdentifier = "iconCell" // cell reuseidentifier이름
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }


    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let target = data[indexPath.row]

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "iconCell", for: indexPath) as? CollectionViewCell

        let img = UIImage(named: target.imageName)

        cell?.iconImg.image = img
        cell?.iconTitle.text = target.title

        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 50)
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


    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        registerXib()

        //테이블 뷰 등록
        tableView.delegate = self
        tableView.dataSource = self

        //테이블뷰 셀 하나 등록
        tableView.register(UINib(nibName: "TableViewCellTwo", bundle: nil), forCellReuseIdentifier: "tableCellTwo")
    }
    func registerXib(){
        let nibName = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView.register(nibName, forCellWithReuseIdentifier: "iconCell")
    }
    
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    struct write{
        let tag: String
        let main: String
    }
    
    var dataTwo = [
        write(tag: "일상", main: "날씨가 많이 추워졌네요 다들 감기 조시하세요"),
        write(tag: "동네소식", main: "서울역 근처에 괜찮은 치과 있을까요? 사랑니 뽑아야하는데 잘 빼는 곳 추천 부탁드립니다.")
    
    ]
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    
    
}




