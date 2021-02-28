//
//  Array+Only.swift
//  Memorize
//
//  Created by Marty Rudolf on 2021-02-27.
//  Copyright © 2021 Marty Rudolf. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
