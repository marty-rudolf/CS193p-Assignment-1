//
//  MemoryGame.swift
//  Memorize
//
//  Created by Marty Rudolf on 2021-02-23.
//  Copyright © 2021 Marty Rudolf. All rights reserved.
//
//
import Foundation
import SwiftUI

struct MemoryGame<CardContent> where CardContent: Equatable {
    var cards: Array<Card>

    var indexOfTheOneAndOnlyFaceUpCard: Int? {
        get { cards.indices.filter { cards[$0].isFaceUp }.only }
        set {
            for index in cards.indices {
                cards[index].isFaceUp = index == newValue
            }
        }
    }

    mutating func choose(card: Card) {
        if let chosenIndex = cards.firstIndex(matching: card), !cards[chosenIndex].isFaceUp, !cards[chosenIndex].isMatched {
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                self.cards[chosenIndex].isFaceUp = true
            } else {
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
        }
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        cards.shuffle()
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
    
    struct Theme: Identifiable {
        var id: String { name }
        var name: String
        var emojiPack: [String]
        var numCards: Int?
        var color: Color
    }
    
    var themes: [Theme] = [
        Theme(name: "Faces", emojiPack: ["👩‍🦳", "👳‍♂️", "👩", "🧕" ,"👩‍🎤", "🧑‍🎤", "🧟‍♂️", "🧑‍🚒"], color: .yellow),
        Theme(name: "Flags", emojiPack: ["🇦🇸", "🇨🇨", "🏳️", "🇺🇳", "🇨🇳", "🇧🇳"], color: .black),
        Theme(name: "Food", emojiPack: ["🍏", "🍎", "🍇", "🍋", "🥨"], color: .green),
        Theme(name: "Halloween", emojiPack: ["👻", "🎃", "🤡", "👽", "💀", "🧟‍♀️", "👩‍🚀", "🧜‍♀️", "🦹‍♂️", "🎩"], color: .orange),
        Theme(name: "Sports", emojiPack: ["⚽️", "🏀", "🏈", "🪀", "🏓"], color: .blue)
    ]



    
}
