//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Moisés on 05/10/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
