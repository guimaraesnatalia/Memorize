//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by NatΓ‘lia Guimaraes on 28/11/21.
//VIEW MODEL

import SwiftUI

class EmojiMemoryGame: ObservableObject{
    
    static let emojis = ["π","π", "π" , "π","π", "π", "π", "π", "π", "π", "π»", "π", "π", "π", "πΊ", "π", "π", "π", "π", "π‘", "π ", "π", "π", "π", "π", "π", "π", "π", "β΅οΈ", "π", "πΈ"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) {pairIndex in
            emojis[pairIndex]
        }

    }
        
    @Published private var model: MemoryGame<String> = createMemoryGame()
        
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
}
