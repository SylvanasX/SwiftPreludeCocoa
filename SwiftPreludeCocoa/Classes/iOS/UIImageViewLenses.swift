//
//  UIImageViewLenses.swift
//  Pods-SwiftPreludeCocoa_Example
//
//  Created by Sylvanas on 2018/4/17.
//

import UIKit
import SwiftPrelude
import SwiftPreludeCocoa

public protocol UIImageViewProtocol: UIViewProtocol {
    var image: UIImage? { get set }
}

extension UIImageView: UIImageViewProtocol {}

extension LensHolder where Object: UIImageViewProtocol {
    public var image: Lens<Object, UIImage?> {
        return Lens(view: { $0.image }, set: { $1.image = $0; return $1 })
    }
}
