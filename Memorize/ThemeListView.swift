//
//  ThemeListView.swift
//  Memorize
//
//  Created by Marty Rudolf on 2021-02-28.
//  Copyright © 2021 Marty Rudolf. All rights reserved.
//

import SwiftUI

struct ThemeListView: View {
    var body: some View {
        NavigationView {
            List(themes) { theme in
                ThemeRowView(theme: theme)
            }
//            .navigationTitle("Themes")
        }
    }
}

struct ThemeList_Previews: PreviewProvider {
    static var previews: some View {
        ThemeListView()
    }
}
