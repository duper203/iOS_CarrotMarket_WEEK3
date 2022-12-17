//
//  ViewControllerFour.swift
//  carrot
//
//  Created by 김혜수 on 2022/11/02.
//

import Foundation
import UIKit

class ViewControllerFour: UIViewController{
    
    @IBOutlet weak var table: UITableView!
    
    struct chat{
        let imgName: String
        let name: String
        let place: String
    }
    
    let data: [chat] = [
        chat(imgName: "profile", name:"userOne", place:"청파동"),
        chat(imgName: "profile", name:"userTwo", place:"청파동"),
        chat(imgName: "profile", name:"userThree", place:"청파동"),
        chat(imgName: "profile", name:"userFour", place:"청파동"),
        chat(imgName: "profile", name:"userFive", place:"청파동"),
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self

    }
}

extension ViewControllerFour: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chat = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "chatCell", for: indexPath) as! chatCollectionCell
        cell.profile.image = UIImage(named: chat.imgName)
        cell.name.text = chat.name
        cell.place.text = chat.place
        
        return cell
    }
    //각 셀 height 조절
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}
