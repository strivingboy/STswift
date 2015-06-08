//
//  FirstViewController.swift
//  STswift
//
//  Created by tusu on 15/6/8.
//  Copyright (c) 2015年 strivingboy. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.grayColor()
        self.addCheckBoxButton()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func addCheckBoxButton() {
        let checkBox = STCheckBoxButton(frame: CGRectMake(100, 100, 100, 40),
            title: "checkbox",
            normalImage: UIImage(named: "checkbox_normal")!,
            selectedImage: UIImage(named: "checkbox_selected")!,
            titleFont: UIFont.systemFontOfSize(15),
            titleColor: UIColor.greenColor())
        checkBox .addTarget(self, action:Selector("checkBoxClicked:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(checkBox)
    }
    
    func checkBoxClicked(sender :STCheckBoxButton!) {
        sender.selected = !sender.selected
    }

}
