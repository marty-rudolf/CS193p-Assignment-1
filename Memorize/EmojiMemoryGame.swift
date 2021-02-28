//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Marty Rudolf on 2021-02-23.
//  Copyright © 2021 Marty Rudolf. All rights reserved.
//

import SwiftUI



class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()

    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: [String] = ["👻", "🎃", "🤡", "👽", "💀", "🧟‍♀️", "👩‍🚀", "🧜‍♀️", "🦹‍♂️", "🎩"]
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2..<6))  { pairIndex in
            return emojis[(pairIndex + Int.random(in: 0...10)) % 10]
        }
    }
    
    
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
