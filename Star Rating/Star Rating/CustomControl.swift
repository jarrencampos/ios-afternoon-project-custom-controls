//
//  CustomControl.swift
//  Star Rating
//
//  Created by Jarren Campos on 4/16/20.
//  Copyright © 2020 Jarren Campos. All rights reserved.
//

import UIKit

class CustomControl: UIControl {
    var value: Int = 1
    var labelArray: [UILabel] = []
    private let componentDimension: CGFloat = 40.0
    private let componentCount = 5
    private let componentActiveColor = UIColor.black
    private let componentInactiveColor = UIColor.gray
    
    required init?(coder aCoder: NSCoder) {
        super.init(coder: aCoder)
        setup()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup() {
        let labelTotal = 5
        var counter = 0
        var starSpace: CGFloat = 8.0
        repeat {
            var label = UILabel()
            label.tag = counter
            label.font = UIFont(name: "bold system font", size: 32.0)
            label = UILabel(frame: CGRect(x: starSpace, y: 0.0, width: componentDimension, height: componentDimension))
            label.text = "\u{2606}"
            label.textAlignment = .center
            labelArray.append(label)
            addSubview(labelArray[counter])
            counter += 1
            starSpace += (componentDimension + 8.0)
        } while counter != labelTotal
    
            for colors in labelArray{
                colors.textColor = componentInactiveColor
            }
            labelArray[0].textColor = componentActiveColor

                
    }
    
    override var intrinsicContentSize: CGSize {
      let componentsWidth = CGFloat(componentCount) * componentDimension
      let componentsSpacing = CGFloat(componentCount + 1) * 8.0
      let width = componentsWidth + componentsSpacing
      return CGSize(width: width, height: componentDimension)
    }
    
}

