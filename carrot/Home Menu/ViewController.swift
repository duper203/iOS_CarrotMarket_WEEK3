//
//  ViewController.swift
//  carrot
//
//  Created by 김혜수 on 2022/11/02.
//

import UIKit

//데이터를 위한 객체를 생성
//struct Product {
//
//    let imageName: String
//    let title: String
//    let place: String
//    let price: String
//}
//
//var data: [Product] = [
//    Product(imageName: "item1", title:"롯데호텔부페이용권3장", place:"용산구 청파동", price:"300,000원"),
//    Product(imageName: "item2", title:"이케아 테이블/선반", place:"용산구 청파동", price:"10,000원"),
//    Product(imageName: "item3", title:"(급처)정품 꼼데 가디건", place:"용산구 청파동", price:"170,000원"),
//    Product(imageName: "item4", title:"item4", place:"용산구 청파동", price:"5,000원"),
//]
//
//
//var list = [Product]()


var img = ["item1", "item2", "item3", "item4"]
var titleLabel = ["롯데호텔부페이용권3장", "이케아 테이블/선반", "(급처)정품 꼼데 가디건", "item4"]
var placeLabel = ["용산구 청파동", "용산구 청파동", "용산구 청파동", "용산구 청파동"]
var priceLabel = ["300,000원", "10,000원", "170,000원", "5,000원"]



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        setRadius()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        table.reloadData()
        print("reload")

    }
    
    
    //총 셀 개수 == 데이터 개수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return data.count
        print(img.count)
        return img.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let product = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomTableViewCell
        
        print("print cell")
        cell.img.image = UIImage(named: img[indexPath.row])
        cell.title.text = titleLabel[indexPath.row]
        cell.place.text = placeLabel[indexPath.row]
        cell.price.text = priceLabel[indexPath.row]
        
//        cell.img.image = UIImage(named: product.imageName)
//        cell.title.text = product.title
//        cell.place.text = product.place
//        cell.price.text = product.price
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    
    
    @IBOutlet weak var btn: UIButton!
    func setRadius(){
            btn.layer.cornerRadius = 20
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "cellSegue"{
                if let destination = segue.destination as?
                    cellDataController {
                    if let selectdeIndex =
                        self.table.indexPathForSelectedRow?.row {
    
                        destination.prepareImgName = img[selectdeIndex]
                        destination.labelOne = titleLabel[selectdeIndex]
                        destination.labelTwo = placeLabel[selectdeIndex]
                        destination.labelThree = priceLabel[selectdeIndex]
//                        destination.LabelFour = textLabel[selectIndex]
                    }
                }
            }
        }
    
   
//    
//    //시도
    var addTitle: String?
    var addPrice: String?
    

}

