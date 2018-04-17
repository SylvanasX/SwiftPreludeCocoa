//
//  UIViewLenses.swift
//  Pods-SwiftPreludeCocoa_Example
//
//  Created by Sylvanas on 2018/4/17.
//

import UIKit
import SwiftPrelude

public protocol UIViewProtocol: LensObject, NSObjectProtocol {
    var alpha: CGFloat { get set }
    var backgroundColor: UIColor? { get set }
    var clipsToBounds: Bool { get set }
    var contentMode: UIViewContentMode { get set }
    var frame: CGRect { get set }
    var isHidden: Bool { get set }
    var layer: CALayer { get }
    var layoutMargins: UIEdgeInsets { get set }
    var tag: Int { get set }
    var tintColor: UIColor! { get set }
    var translatesAutoresizingMaskIntoConstraints: Bool { get set }
    var isUserInteractionEnabled: Bool { get set }
}

extension UIView: UIViewProtocol {}

public extension LensHolder where Object: UIViewProtocol {
    public var alpha: Lens<Object, CGFloat> {
        return Lens(view: {
            $0.alpha
        }, set: {
            $1.alpha = $0
            return $1
        })
    }
    
    public var backgroundColor: Lens<Object, UIColor> {
        return Lens(
            view: { $0.backgroundColor ?? .clear },
            set: { $1.backgroundColor  = $0; return $1})
    }
    
    public var clipsToBounds: Lens<Object, Bool> {
        return Lens(
            view: { $0.clipsToBounds },
            set: { $1.clipsToBounds  = $0; return $1})
    }
    
    public var frame: Lens<Object, CGRect> {
        return Lens(
            view: { $0.frame },
            set: { $1.frame  = $0; return $1})
    }
    
    public var isHidden: Lens<Object, Bool> {
        return Lens(
            view: { $0.isHidden },
            set: { $1.isHidden  = $0; return $1})
    }
    
    public var layer: Lens<Object, CALayer> {
        return Lens(view: { $0.layer }, set: { $1 })
    }
    
    public var layoutMargins: Lens<Object, UIEdgeInsets> {
        return Lens(view: { $0.layoutMargins }, set: { $1.layoutMargins  = $0; return $1})
    }
    
    public var tag: Lens<Object, Int> {
        return Lens(view: { $0.tag }, set: { $1.tag  = $0; return $1})
    }
    
    public var tintColor: Lens<Object, UIColor> {
        return Lens(view: { $0.tintColor }, set: { $1.tintColor  = $0; return $1})
    }
    
    public var translatesAutoresizingMaskIntoConstraints: Lens<Object, Bool> {
        return Lens(view: { $0.translatesAutoresizingMaskIntoConstraints }, set: { $1.translatesAutoresizingMaskIntoConstraints  = $0; return $1})
    }
    
    public var isUserInteractionEnabled: Lens<Object, Bool> {
        return Lens(view: { $0.isUserInteractionEnabled }, set: { $1.isUserInteractionEnabled  = $0; return $1})
    }
}

public extension Lens where Whole: UIViewProtocol, Part == CGRect {
    public var origin: Lens<Whole, CGPoint> {
        return Whole.lens.frame..CGRect.lens.origin
    }
    
    public var size: Lens<Whole, CGSize> {
        return Whole.lens.frame..CGRect.lens.size
    }
}

public extension Lens where Whole: UIViewProtocol, Part == CGPoint {
    public var x: Lens<Whole, CGFloat> {
        return Whole.lens.frame.origin..CGPoint.lens.x
    }
    
    public var y: Lens<Whole, CGFloat> {
        return Whole.lens.frame.origin..CGPoint.lens.y
    }
}

public extension Lens where Whole: UIViewProtocol, Part == CGSize {
    public var width: Lens<Whole, CGFloat> {
        return Whole.lens.frame.size..CGSize.lens.width
    }
    
    public var height: Lens<Whole, CGFloat> {
        return Whole.lens.frame.size..CGSize.lens.height
    }
}


