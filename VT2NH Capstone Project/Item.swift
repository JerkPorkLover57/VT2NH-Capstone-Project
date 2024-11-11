//
//  Item.swift
//  VT2NH Capstone Project
//
//  Created by Kevin Edwards on 11/11/24.
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
