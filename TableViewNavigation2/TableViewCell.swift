//
//  TableViewCell.swift
//  TableViewNavigation2
//
//  Created by Choudhary Dipika on 10/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var imagePicker: UIImageView!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
