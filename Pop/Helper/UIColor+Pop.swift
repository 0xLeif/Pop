//
//  UIColor+Pop.swift
//  Pop
//
//  Created by Zach Eriksen on 10/16/20.
//

import UIKit

enum Lightness: CGFloat {
    case _0
    case _1
    case _2
    case _3
    case _4
    case _5
    case _6
    case _7
    case _8
    case _9
    case _10
    case _11
    case _12
    case _13
    case _14
    case _15
    case _16
    case _17
    case _18
    case _19
    case _20
    case _21
    case _22
    case _23
    case _24
    case _25
    case _26
    case _27
    case _28
    case _29
    case _30
    case _31
    case _32
    case _33
    case _34
    case _35
    case _36
    case _37
    case _38
    case _39
    case _40
    case _41
    case _42
    case _43
    case _44
    case _45
    case _46
    case _47
    case _48
    case _49
    case _50
    case _51
    case _52
    case _53
    case _54
    case _55
    case _56
    case _57
    case _58
    case _59
    case _60
    case _61
    case _62
    case _63
    case _64
    case _65
    case _66
    case _67
    case _68
    case _69
    case _70
    case _71
    case _72
    case _73
    case _74
    case _75
    case _76
    case _77
    case _78
    case _79
    case _80
    case _81
    case _82
    case _83
    case _84
    case _85
    case _86
    case _87
    case _88
    case _89
    case _90
    case _91
    case _92
    case _93
    case _94
    case _95
    case _96
    case _97
    case _98
    case _99
    case _100
}

extension Lightness {
    var negative: RawValue {
        -value
    }
    
    var value: RawValue {
        rawValue / 100
    }
}

extension UIColor {
    private func makeColor(lightness: Lightness, isNegative: Bool = false) -> UIColor {
        let value: CGFloat
        
        if isNegative {
            value = lightness.negative
        } else {
            value = lightness.value
        }
        
        var red: CGFloat = 0
        var blue: CGFloat = 0
        var green: CGFloat = 0
        var alpha: CGFloat = 0
        
        getRed(
            &red,
            green: &green,
            blue: &blue,
            alpha: &alpha
        )
        
        return UIColor(
            red: red + value,
            green: green + value,
            blue: blue + value,
            alpha: alpha
        )
    }
}

extension UIColor {
    func lighter(_ lightness: Lightness) -> UIColor {
        makeColor(lightness: lightness)
    }
    
    func darker(_ darkness: Lightness) -> UIColor {
        makeColor(lightness: darkness, isNegative: true)
    }
}
