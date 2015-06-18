//
//  UIImageViewExt.swift
//  STswift
//
//  Created by tusu on 15/6/18.
//  Copyright (c) 2015年 strivingboy. All rights reserved.
//

import UIKit

extension UIImageView{
    func roundImage()
    {
        // height and width should be the same
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2;
    }
}
