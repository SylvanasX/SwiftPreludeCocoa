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

    @IBOutlet weak var v1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        _ = self.view
            |> UIView.lens.backgroundColor .~ UIColor.red
            |> UIView.lens.alpha %~ { $0 + 0.1 }
        
        _ = v1 |> UIView.lens.backgroundColor .~ UIColor.green
        
//        UIView.lens.frame.
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        v1.frame = v1.frame |> CGRect.lens.size .~ CGSize(width: 100, height: 200)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

