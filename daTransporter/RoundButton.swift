//
//  RoundButton.swift
//  daTransporter
//
//  Created by MacBook on 21/6/18.
//  Copyright © 2018 MacBook. All rights reserved.
//

//import Foundation
import UIKit

@IBDesignable class RoundButton: UIButton{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
    func sharedInit(){
        refreshCorners(value: cornerRadius)
    }
    
    //Change the corner and set the shadow
    func refreshCorners(value: CGFloat){
        layer.cornerRadius = value
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 15
    }
    
    @IBInspectable var cornerRadius: CGFloat = 15 {
        didSet {
            refreshCorners(value: cornerRadius)
        }
    }
    
    
}
