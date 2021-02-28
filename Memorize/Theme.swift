//
//  Theme.swift
//  Memorize
//
//  Created by Marty Rudolf on 2021-02-28.
//  Copyright © 2021 Marty Rudolf. All rights reserved.
//

import Foundation

struct Theme: Identifiable {
    var id: String { name }
    var name: String
    var emojiPack: [String]
    var description: String = ""
}


let themes: [Theme] = [
    Theme(name: "Faces", emojiPack: ["👩‍🦳", "👳‍♂️", "👩", "🧕" ,"👩‍🎤", "🧑‍🎤", "🧟‍♂️", "🧑‍🚒"]),
    Theme(name: "Flags", emojiPack: ["🇦🇸", "🇨🇨", "🏳️", "🇺🇳", "🇨🇳", "🇧🇳"]),
    Theme(name: "Food", emojiPack: ["🍏", "🍎", "🍇", "🍋", "🥨"]),
    Theme(name: "Halloween", emojiPack: ["👻", "🎃", "🤡", "👽", "💀", "🧟‍♀️", "👩‍🚀", "🧜‍♀️", "🦹‍♂️", "🎩"]),
    Theme(name: "Sports", emojiPack: ["⚽️", "🏀", "🏈", "🪀", "🏓"])
]
