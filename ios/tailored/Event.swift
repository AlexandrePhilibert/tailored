//
//  Event.swift
//  tailored
//
//  Created by Alexandre Philibert on 2026.03.08.
//

import Foundation
import SwiftData

@Model
class Event {
    var name: String

    var image: URL
    var coverImage: URL

    init(name: String, image: URL, coverImage: URL) {
        self.name = name
        self.image = image
        self.coverImage = coverImage
    }
}

