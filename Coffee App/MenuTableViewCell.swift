//
//  MenuTableViewCell.swift
//  Coffee App
//
//  Created by muhammad abdelmohsen on 9/11/22.
//

import UIKit

class MenuTableViewCell: UITableViewCell {


    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var menuTitle: UILabel!
    
    func configCell(data: MenuModel) {
        menuImage.image = UIImage(named: data.image)
        menuTitle.text = data.title
    }
}
