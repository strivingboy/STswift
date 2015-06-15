//
//  STCheckBoxButton.swift
//  STswift
//
//  Created by tusu on 15/6/8.
//  Copyright (c) 2015年 strivingboy. All rights reserved.
//

import UIKit

class STCheckBoxButton: UIButton {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    init(frame: CGRect, title: String, normalImage: UIImage, selectedImage: UIImage, titleFont: UIFont, titleColor: UIColor) {
        super.init(frame: frame)
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
        self.contentVerticalAlignment = UIControlContentVerticalAlignment.Top
        self.setImage(normalImage,forState: UIControlState.Normal)
        self.setImage(selectedImage, forState: UIControlState.Selected)
        self.setTitleColor(titleColor, forState: UIControlState.Normal)
        self.titleLabel?.font = titleFont
        self.setTitle(title, forState: UIControlState.Normal)
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
        self.imageEdgeInsets = UIEdgeInsetsMake((frame.height - self.imageView!.frame.height)/2, 0, 0, 0)
        self.titleEdgeInsets = UIEdgeInsetsMake((frame.height - self.titleLabel!.frame.height)/2, 0, 0, 0)
    }
}
