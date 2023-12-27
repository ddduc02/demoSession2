//
//  MyTableViewCell.swift
//  demoTuan2
//
//  Created by DucDo on 26/12/2023.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet var movieImage: UIImageView?
    @IBOutlet var movieTitle: UILabel?
    @IBOutlet var moiveTime: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
//
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
