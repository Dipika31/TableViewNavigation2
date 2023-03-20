//
//  ViewController.swift
//  TableViewNavigation2
//
//  Created by Choudhary Dipika on 10/02/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   

    @IBOutlet weak var tableView: UITableView!
    var phone = ["Red","Pink","Light Pink","Black","Grey"]
    var numbers = ["1.","2.","3.","4.","5."]
    var image = [UIImage(named: "Red"),UIImage(named: "Pink"),UIImage(named: "LightPink"),UIImage(named: "Black"),UIImage(named: "Grey")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phone.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.numberLabel.text = "\(numbers[indexPath.row])"
        cell.phoneLabel.text = phone[indexPath.row]
        cell.imageView!.image = image[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigation(dataNumber: numbers[indexPath.row], dataPhone: phone[indexPath.row], dataImg: image[indexPath.row]!)
    }
    
    func navigation(dataNumber:String,dataPhone:String,dataImg:UIImage) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigate.numberData = dataNumber
        navigate.phoneData = dataPhone
        navigate.img = dataImg
        navigationController?.pushViewController(navigate, animated: true)
    }
}

