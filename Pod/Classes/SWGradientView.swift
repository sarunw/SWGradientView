//
//  SWGradientView.swift
//  Pods
//
//  Created by Sarun Wongpatcharapakorn on 12/17/15.
//
//

import UIKit

@IBDesignable class SWGradientView: UIView {
    
    @IBInspectable var startColor: UIColor = UIColor.whiteColor() {
        didSet {
            self.updateView()
        }
    }
    
    @IBInspectable var endColor: UIColor = UIColor.blackColor() {
        didSet {
            self.updateView()
        }
    }
    
    @IBInspectable var startPoint: CGPoint = CGPoint(x: 0.5, y: 0) {
        didSet {
            self.updateView()
        }
    }
    
    @IBInspectable var endPoint: CGPoint = CGPoint(x: 0.5, y: 1) {
        didSet {
            self.updateView()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.updateView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.updateView()
    }
    
    private func updateView() {
        let colors = [self.startColor.CGColor, self.endColor.CGColor]
        self.gradientLayer.colors = colors
        self.gradientLayer.startPoint = self.startPoint
        self.gradientLayer.endPoint = self.endPoint
        
    }
    
    // MARK: - Helper
    override class func layerClass() -> AnyClass {
        return CAGradientLayer.self
    }
    
    var gradientLayer: CAGradientLayer {
        return self.layer as! CAGradientLayer
    }
}
