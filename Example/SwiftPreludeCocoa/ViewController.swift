//
//  ViewController.swift
//  SwiftPreludeCocoa
//
//  Created by yuanpeitao@gmail.com on 04/17/2018.
//  Copyright (c) 2018 yuanpeitao@gmail.com. All rights reserved.
//

import UIKit
import SwiftPrelude
import SwiftPreludeCocoa

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        _ = view |> UIView.lens.backgroundColor .~ UIColor.green >>> UIView.lens.layer.borderColor .~ UIColor.yellow.cgColor
//            <> UIView.lens.layer.borderWidth .~ 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

