//
//  CGSizeLenses.swift
//  Pods-SwiftPreludeCocoa_Example
//
//  Created by Sylvanas on 2018/4/17.
//

import Foundation
import SwiftPrelude

extension CGSize {
    public enum lens {
        static let width = SwiftPrelude.lens(\CGSize.width)
        static let height = SwiftPrelude.lens(\CGSize.height)
    }
}
