//
//  CGPointLenses.swift
//  Pods-SwiftPreludeCocoa_Example
//
//  Created by Sylvanas on 2018/4/17.
//

import Foundation
import SwiftPrelude

extension CGPoint {
    public enum lens {
        public static let x = SwiftPrelude.lens(\CGPoint.x)
        public static let y = SwiftPrelude.lens(\CGPoint.y)
    }
}
