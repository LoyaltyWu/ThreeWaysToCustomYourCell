//
//  CustomStoryboardCell.swift
//  FourWaysToCustomYourCell
//
//  Created by Wu on 2017/7/16.
//  Copyright © 2017年 Wu. All rights reserved.
//

import Foundation
import UIKit

class CustomStoryboardCell :UITableViewCell{
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var _imageView: UIImageView!
    func configure(modelData:ModelData){
        label1.text = modelData.attr1
        label2.text = modelData.attr2
        label3.text = modelData.attr3
        _imageView.image = UIImage(named: modelData.imageName)
    }
}
