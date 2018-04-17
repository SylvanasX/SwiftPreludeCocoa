//
//  CGRectLenses.swift
//  Pods-SwiftPreludeCocoa_Example
//
//  Created by Sylvanas on 2018/4/17.
//

import Foundation
import SwiftPrelude

extension CGRect {
    public enum lens {
        public static let origin = SwiftPrelude.lens(\CGRect.origin)
        public static let size = SwiftPrelude.lens(\CGRect.size)
    }
}

extension Lens where Whole == CGRect, Part == CGPoint {
    public var x: Lens<CGRect, CGFloat> {
        return lens(\CGRect.origin.x)
    }
    
    public var y: Lens<CGRect, CGFloat> {
        return lens(\CGRect.origin.y)
    }
}

extension Lens where Whole == CGRect, Part == CGSize {
    public var width: Lens<CGRect, CGFloat> {
        return lens(\CGRect.size.width)
    }
    
    public var height: Lens<CGRect, CGFloat> {
        return lens(\CGRect.size.height)
    }
}
