//
//  ViewControllerFive.swift
//  carrot
//
//  Created by 김혜수 on 2022/11/02.
//

import Foundation
import UIKit

class ViewControllerFive: UIViewController{
    
    //section1 - 구조체 이용
    struct Product {
        let label: String
    }
    
    let data: [Product] = [
        Product(label:"판매내역"),
        Product(label:"구매내역"),
        Product(label:"관심목록"),
        Product(label:"당근가계부"),
    ]
    //section2 - 그냥 배열 이용
    let sectionTwo: [String] = ["동네생활 글/댓글"]
    
    //section3 - 그냥 배열 이용
    let sectionThree: [String] = ["비즈프로필 관리", "광고", "동네홍보 글"]
    
    //section 4 - 그냥 배열 이용
    let sectionFour: [String] = ["내 동네 설정", "동네 인증하기","알림 키워드 설정","자주 묻는 질문", "친구초대"]
    
    //tableView 연결
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        //셀 간격 조절
        if #available(iOS 15, *) {
            tableView.sectionHeaderTopPadding = 20
        }
        
    }

}

extension ViewControllerFive: UITableViewDelegate, UITableViewDataSource{
    
    //section 개수 위해서
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    //section이름 지정
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "나의 거래"
        }
        else if section == 1
        {
            return "나의 동네 생활"
        }
        else if section == 2
        {
            return "나의 비지니스"
        }
        else{
            return "기타"
        }
    }
    
    //기본 - 섹션 마다 셀 개수 지정
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return data.count
        }
        else if section == 2{
            return 3
        }
        else if section == 3{
            return 5
        }
        else{
            return 1

        }
    }
    
    //기본
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycellFive", for: indexPath) as! CustomTableViewCellFive
        
        
        if indexPath.section == 0 {
            
            let product = data[indexPath.row]
            cell.label.text = product.label
            
            return cell
        }
        else if indexPath.section == 1 {
            
        
            cell.label.text = "\(sectionTwo[indexPath.row])"
            
        }
        else if indexPath.section == 2 {
            
            cell.label.text = "\(sectionThree[indexPath.row])"
        }
        
        else{
            cell.label.text = "\(sectionFour[indexPath.row])"
        }
        
        return cell
    }
}
