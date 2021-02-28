//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Marty Rudolf on 2021-02-27.
//  Copyright © 2021 Marty Rudolf. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
