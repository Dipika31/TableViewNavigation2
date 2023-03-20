//
//  ViewController2.swift
//  TableViewNavigation2
//
//  Created by Choudhary Dipika on 10/02/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var numberLabel1: UILabel!
    @IBOutlet weak var phoneLabel1: UILabel!
    
    var img = UIImage()
    var phoneData = String()
    var numberData = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = img
        numberLabel1.text = "\(numberData)"
        phoneLabel1.text = phoneData
    }
    

  

}
