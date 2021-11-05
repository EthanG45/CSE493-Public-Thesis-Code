import Foundation

//
//  UIColor.h
//  UIKit
//
//  Copyright (c) 2005-2018 Apple Inc. All rights reserved.
//

@available(iOS 2.0, *)
open class UIColor : NSObject, NSSecureCoding, NSCopying {

    
    // Initializers for creating colors
    public init(white: CGFloat, alpha: CGFloat)

    public init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)

    public init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)

    @available(iOS 10.0, *)
    public init(displayP3Red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)

    public init(cgColor: CGColor)

    public init(patternImage image: UIImage)

    
    @available(iOS 5.0, *)
    public init(ciColor: CIColor)

    
    // Some convenience methods to create colors.  These colors will be as calibrated as possible.
    // These colors are cached.
    open class var black: UIColor { get } // 0.0 white

    open class var darkGray: UIColor { get } // 0.333 white

    open class var lightGray: UIColor { get } // 0.667 white

    open class var white: UIColor { get } // 1.0 white

    open class var gray: UIColor { get } // 0.5 white

    open class var red: UIColor { get } // 1.0, 0.0, 0.0 RGB

    open class var green: UIColor { get } // 0.0, 1.0, 0.0 RGB

    open class var blue: UIColor { get } // 0.0, 0.0, 1.0 RGB

    open class var cyan: UIColor { get } // 0.0, 1.0, 1.0 RGB

    open class var yellow: UIColor { get } // 1.0, 1.0, 0.0 RGB

    open class var magenta: UIColor { get } // 1.0, 0.0, 1.0 RGB

    open class var orange: UIColor { get } // 1.0, 0.5, 0.0 RGB

    open class var purple: UIColor { get } // 0.5, 0.0, 0.5 RGB

    open class var brown: UIColor { get } // 0.6, 0.4, 0.2 RGB

    open class var clear: UIColor { get } // 0.0 white, 0.0 alpha

    
    // Set the color: Sets the fill and stroke colors in the current drawing context. Should be implemented by subclassers.
    open func set()

    
    // Set the fill or stroke colors individually. These should be implemented by subclassers.
    open func setFill()

    open func setStroke()

    
    // Convenience methods for getting components.
    // If the receiver is of a compatible color space, any non-NULL parameters are populated and 'YES' is returned. Otherwise, the parameters are left unchanged and 'NO' is returned.
    @available(iOS 5.0, *)
    open func getWhite(_ white: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?) -> Bool

    @available(iOS 5.0, *)
    open func getHue(_ hue: UnsafeMutablePointer<CGFloat>?, saturation: UnsafeMutablePointer<CGFloat>?, brightness: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?) -> Bool

    @available(iOS 5.0, *)
    open func getRed(_ red: UnsafeMutablePointer<CGFloat>?, green: UnsafeMutablePointer<CGFloat>?, blue: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?) -> Bool

    
    // Returns a color in the same color space as the receiver with the specified alpha component.
    open func withAlphaComponent(_ alpha: CGFloat) -> UIColor

    
    // Access the underlying CGColor or CIColor.
    open var cgColor: CGColor { get }

    
    @available(iOS 5.0, *)
    open var ciColor: CIColor { get }
}

extension UIColor : NSItemProviderReading, NSItemProviderWriting {
}

extension CIColor {

    
    @available(iOS 5.0, *)
    public convenience init(color: UIColor)
}

extension UIColor {

    @available(iOS 11.0, *)
    public /*not inherited*/ init?(named name: String) // load from main bundle

    @available(iOS 11.0, *)
    public /*not inherited*/ init?(named name: String, in bundle: Bundle?, compatibleWith traitCollection: UITraitCollection?)
}

extension UIColor {

    
    @available(iOS 13.0, *)
    public init(dynamicProvider: @escaping (UITraitCollection) -> UIColor)

    
    /* Resolve any color to its most fundamental form (a non-dynamic color) for a specific trait collection.
     */
    @available(iOS 13.0, *)
    open func resolvedColor(with traitCollection: UITraitCollection) -> UIColor
}
