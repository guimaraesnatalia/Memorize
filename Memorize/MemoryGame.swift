//
//  MemoryGame.swift
//  Memorize
//
//  Created by Natália Guimaraes on 28/11/21.
//

import Foundation

struct MemoryGame<CardContent>{
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card){
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent){
        cards = Array<Card>()
        //add numberOfPairsOfCards x 2 cards to cards Array
        for pairIndex in 0...numberOfPairsOfCards{
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(Content: content))
            cards.append(Card(Content: content))
        }
        
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var Content: CardContent
    }
}

