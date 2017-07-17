//
//  CodeCustomCell.swift
//  FourWaysToCustomYourCell
//
//  Created by Wu on 2017/7/16.
//  Copyright © 2017年 Wu. All rights reserved.
//

import Foundation
import UIKit

// frame 和 bounds之间的区别
// frame用的坐标体系是父组件的内的坐标，而bounds用的是设备实际的坐标

class CodeCustomCell: UITableViewCell{
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
        super.init(style: .default, reuseIdentifier: "CellIDForCodeCustomCell")
        // fatalError("init(coder:) has not been implemented")
    }
}

