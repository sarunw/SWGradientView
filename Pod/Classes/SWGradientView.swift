//
//  SWGradientView.swift
//  Pods
//
//  Created by Sarun Wongpatcharapakorn on 12/17/15.
//
//

import UIKit

@IBDesignable public class SWGradientView: UIView {
    
    @IBInspectable public var startColor: UIColor = UIColor.white() {
        didSet {
            self.updateView()
        }
    }
    
    @IBInspectable public var endColor: UIColor = UIColor.black() {
        didSet {
            self.updateView()
        }
    }
    
    @IBInspectable public var startPoint: CGPoint = CGPoint(x: 0.5, y: 0) {
        didSet {
            self.updateView()
        }
    }
    
    @IBInspectable public var endPoint: CGPoint = CGPoint(x: 0.5, y: 1) {
        didSet {
            self.updateView()
        }
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.updateView()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.updateView()
    }
    
    private func updateView() {
        let colors = [self.startColor.cgColor, self.endColor.cgColor]
        self.gradientLayer.colors = colors
        self.gradientLayer.startPoint = self.startPoint
        self.gradientLayer.endPoint = self.endPoint
        
    }
    
    // MARK: - Helper
    override public class func layerClass() -> AnyClass {
        return CAGradientLayer.self
    }
    
    private var gradientLayer: CAGradientLayer {
        return self.layer as! CAGradientLayer
    }
}
