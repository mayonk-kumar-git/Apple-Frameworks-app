//
//  Item.swift
//  Apple-Frameworks-app
//
//  Created by Mayonk Kumar Behera on 02/11/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
