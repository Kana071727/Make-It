//
//  WordTableViewCell.swift
//  Make It
//
//  Created by 清水　佳奈音 on 2022/04/27.
//

import UIKit

class WordTableViewCell: UITableViewCell {
    @IBOutlet var Label1: UILabel!
    @IBOutlet var Label2: UILabel!
    
    var wordArray: [Dictionary<String, String>] = []
    let saveData = UserDefaults.standard

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
