//
//  EventView.swift
//  tailored
//
//  Created by Alexandre Philibert on 2026.03.08.
//

import SwiftUI

struct EventView: View {
    var event: Event

    var body: some View {
        Text(event.name)
    }
}
