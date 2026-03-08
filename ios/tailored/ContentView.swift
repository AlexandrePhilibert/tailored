//
//  ContentView.swift
//  tailored
//
//  Created by Alexandre Philibert on 2026.03.08.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Explore", image: "GlobeHemisphereWest") {
                ExploreView()
            }
            Tab("Search", image: "MagnifyingGlass") {
                SearchView()
            }
            Tab("Tickets", image: "Ticket") {
                TicketsView()
            }
            Tab("Profile", image: "UserCircle") {
                ProfileView()
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Event.self, inMemory: true)
}
