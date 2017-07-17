//
//  AutoLayoutCustomCell.swift
//  FourWaysToCustomYourCell
//
//  Created by Wu on 2017/7/17.
//  Copyright © 2017年 Wu. All rights reserved.
//

import Foundation
import UIKit

// Here's the thing:
// When I was about to add the way to custom the cell in the autoLayout way.I found I need to learn more about AutoLayout.So the code for custom cell with auto layout may be delated.

class AutoLayoutCustomCell :UITableViewCell{
    var _imageView:UIImageView!
    var label1:UILabel!
    var label2:UILabel!
    var label3:UILabel!
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        _imageView = UIImageView(frame: CGRect(x: 50, y: 0, width: 88, height: 88))
        label1 = UILabel(frame: CGRect(x: 0, y: 0, width: 42, height: 21))
        label2 = UILabel(frame: CGRect(x: 0, y: 29, width: 42, height: 21))
        label3 = UILabel(frame: CGRect(x: 0, y: 58, width: 42, height: 21))
    }
    
    func configure(modelData:ModelData){
        label1.text = modelData.attr1
        label2.text = modelData.attr2
        label3.text = modelData.attr3
        _imageView.image = UIImage(named: modelData.imageName)
        self.addSubview(label1)
        self.addSubview(label2)
        self.addSubview(label3)
        self.addSubview(_imageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // fatalError("init(coder:) has not been implemented")
    }
}
