//
//  Theme.swift
//  Memorize
//
//  Created by Moisรฉs on 16/10/21.
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
            "๐","๐บ","๐ฆน๐ผ","๐","๐คก","๐ฝ",
            "๐ฎ๐ผโโ๏ธ","๐ง๐ผ","๐ง๐ผ","๐ง๐ผโโ๏ธ","๐ง๐ฝ","๐ง",
    ])
    
    static let animal = GameTheme(
        themeName: "animal",
        themeColor: .green,
        cardContents: [
            "๐ญ","๐ฎ","๐ฏ","๐ฐ","๐ฒ","๐",
            "๐ด","๐","๐ต","๐","๐","๐ท",
    ])
    static let sign = GameTheme(
        themeName: "sign",
        themeColor: .blue,
        cardContents: [
            "๐","๐ธ","โ","๐ฟ๏ธ","๐ค","๐ช",
            "โฃ๏ธ","โฅ๏ธ","๐ฑ","๐ฎ","๐งก","๐",
    ])
    
}
