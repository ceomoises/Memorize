//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Moisés on 12/10/21.
//

import SwiftUI


class EmojiMemoryGame : ObservableObject {
    
    init (gameTheme: GameTheme){
        self.gameTheme = gameTheme
        self.model = EmojiMemoryGame.createMemoryGame(gameTheme)
    }

   
    static func createMemoryGame(_ theme: GameTheme)->MemoryGame<String>{
        let emojis = theme.cardContents.shuffled()[0...5]
        let randomNumber = (3...5).randomElement()!
        return MemoryGame<String>(numberOfPairsOfCards: randomNumber){ pairIndex in
            emojis[pairIndex]
        }
    }
    
    
    @Published private var model : MemoryGame<String>
    
    // MARK: - Access to the Model
    var gameTheme : GameTheme
    
    var cards : Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card ){
        //objectWillChange.send()
        model.choose(card)
    }
    
}
