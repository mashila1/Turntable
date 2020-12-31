//
//  WheelImageView.swift
//  Turntable
//
//  Created by NDHU_CSIE on 2020/12/30.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit

class WheelImageView: UIImageView {

    var currentValue: Double = 0
    func rotataeGraduslly(handler: @escaping(String)->()){
        var result = ""
        // var degree1 = 0.0
        let randomDouble = Double.random(in: 0..<2*Double.pi)
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        CATransaction.begin()
        rotateAnimation.fromValue = currentValue
        currentValue = currentValue + 100*Double.pi + randomDouble
        let value = currentValue.truncatingRemainder(dividingBy: Double.pi*2)
        let degree = integer_t(value * 180)%360
        print(degree)
        switch degree{
        case 0..<45:
            result = "light blue"
        case 0..<90:
            result = "orange"
        case 0..<135:
            result = "yellow"
        case 0..<180:
            result = "purpose"
        case 0..<225:
            result = "dark blue"
        case 0..<270:
            result = "red"
        case 0..<315:
            result = "yellow"
        case 0..<360:
            result = "green"
        default:
            result = "i don't know"
        }
        rotateAnimation.toValue = currentValue
        rotateAnimation.isRemovedOnCompletion = false
        rotateAnimation.fillMode = .forwards
        rotateAnimation.duration = 5
        rotateAnimation.repeatCount = 1
        CATransaction.setCompletionBlock{
            DispatchQueue.main.asyncAfter(deadline: .now()+0.3){
                handler(result)
            }
        }
        rotateAnimation.timingFunction = CAMediaTimingFunction(controlPoints: 0, 0.9, 0.4, 1.00)
        self.layer.add(rotateAnimation, forKey: nil)
        CATransaction.commit()
    }

}
