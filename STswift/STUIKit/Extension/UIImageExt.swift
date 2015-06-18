//
//  UIImageExt.swift
//  STswift
//
//  Created by tusu on 15/6/18.
//  Copyright (c) 2015年 strivingboy. All rights reserved.
//

import UIKit

extension UIImage {
    func croppedImage(bound : CGRect) -> UIImage
    {
        var scaledBounds : CGRect = CGRectMake(bound.origin.x * self.scale, bound.origin.y * self.scale, bound.size.width * self.scale, bound.size.height * self.scale)
        var imageRef = CGImageCreateWithImageInRect(self.CGImage, scaledBounds)
        var croppedImage : UIImage = UIImage(CGImage: imageRef, scale: self.scale, orientation: UIImageOrientation.Up)!
        return croppedImage;
    }
}
