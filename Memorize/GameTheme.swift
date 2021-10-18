//
//  Theme.swift
//  Memorize
//
//  Created by Moisés on 16/10/21.
//

import SwiftUI

struct GameTheme {
    init(themeName:String, themeColor:Color, cardContents: [String] ){
        self.themeName = themeName
        self.themeColor = themeColor
        self.cardContents = cardContents
    }
    var themeName : String
    var themeColor : Color
    var cardContents : [String]
}

extension GameTheme{
    
    static var allThemes:[GameTheme]
    {
        [
            .halloween,
            .animal,
            .sign
        ]
    }
    
    static let halloween = GameTheme(
        themeName: "halloween",
        themeColor: .orange,
        cardContents: [
            "🌝","👺","🦹🏼","😈","🤡","👽",
            "👮🏼‍♂️","🧝🏼","🧛🏼","🧜🏼‍♂️","🧚🏽","🧟",
    ])
    
    static let animal = GameTheme(
        themeName: "animal",
        themeColor: .green,
        cardContents: [
            "🐭","🐮","🐯","🐰","🐲","🐍",
            "🐴","🐑","🐵","🐔","🐕","🐷",
    ])
    static let sign = GameTheme(
        themeName: "sign",
        themeColor: .blue,
        cardContents: [
            "🆎","🚸","✅","🅿️","🟤","🟪",
            "♣️","♥️","🔱","💮","🧡","💝",
    ])
    
}
