//
//  PresentModalController.swift
//  carrot
//
//  Created by 김혜수 on 2022/11/04.
//

import Foundation
import UIKit

class PresentModalController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "popupCell", for: indexPath) as! popupCell
        cell.menu.text = "\(data[indexPath.row])"
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let data: [String] = ["알바","과외","농수산물","부동산","내 물건 팔기"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRadius()
        
        tableView.delegate = self
        tableView.dataSource = self
        if #available(iOS 15, *) {
            tableView.sectionHeaderTopPadding = 20
            
        }
    }
    
    @IBAction func backbutton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var btn: UIButton!
    func setRadius(){
            btn.layer.cornerRadius = 20
        }
}
