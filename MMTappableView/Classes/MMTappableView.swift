//
//  MMTappableView.swift
//  WelcomeMac
//
//  Created by Muthuraj Muthulingam on 12/05/19.
//  Copyright © 2019 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

public enum MMTappableViewEvent {
    case tapBegin
    case tapEnd
    case tapProgress
}

public protocol MMTappableViewDelegates: class {
    func mmTappableView(_ view: MMTappableView, didGenerateEvent event: MMTappableViewEvent)
}

@IBDesignable
public class MMTappableView: UIView {
    
    // MARK: - Public Properties
    @IBInspectable public var isTappable: Bool = true // Boolean tracker to decide tap animation
    public weak var delegate: MMTappableViewDelegates?

    // MARK: - Designated Initialiser
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - Touch Related Methods
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if isTappable {
            performPressEffect(isTapEnd: false)
            delegate?.mmTappableView(self, didGenerateEvent: .tapBegin)
        }
    }
    
    public override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        if isTappable {
           delegate?.mmTappableView(self, didGenerateEvent: .tapProgress)
        }
    }
    
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        if isTappable {
           performPressEffect(isTapEnd: true)
           delegate?.mmTappableView(self, didGenerateEvent: .tapEnd)
        }
    }
    
    // MARK: - Private Helpers
    private func performPressEffect(isTapEnd: Bool) {
        // scale the view
        UIView.animate(withDuration: 0.3) {
            if isTapEnd {
                self.transform = .identity
            } else {
                let scaleTransform = CGAffineTransform(scaleX: 0.95, y: 0.95)
                self.transform = scaleTransform
            }
        }
    }
}
