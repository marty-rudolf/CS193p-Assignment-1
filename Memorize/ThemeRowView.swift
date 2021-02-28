//
//  ThemeRowView.swift
//  Memorize
//
//  Created by Marty Rudolf on 2021-02-28.
//  Copyright © 2021 Marty Rudolf. All rights reserved.
//

import SwiftUI

struct ThemeRowView: View {
    var theme: Theme

    var body: some View {
        VStack {
            Text(theme.name).frame(alignment: .leading)
            HStack {
                ForEach(theme.emojiPack, id: \.self) { emoji in
                    Text("\(emoji)")
                }
            }
            
            Spacer()
        }
    }
}

struct ThemeRowView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeRowView(theme: Theme(name: "Faces", emojiPack: ["👩‍🦳", "👳‍♂️", "👩", "🧕" ,"👩‍🎤", "🧑‍🎤", "🧟‍♂️", "🧑‍🚒"]))
    }
}
