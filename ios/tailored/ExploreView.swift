//
//  ExploreView.swift
//  tailored
//
//  Created by Alexandre Philibert on 2026.03.08.
//

import SwiftUI

struct ExploreView: View {
    let event = Event(
        name: "Caribana",
        image: URL(string: "https://www.ticketcorner.ch/obj/media/CH-eventim/teaser/222x222/2025/caribana-tickets-2026.jpg")!,
        coverImage: URL(string: "https://www.ticketcorner.ch/obj/media/CH-eventim/teaser/evo/artwork/2025/caribana-festival-tickets-2026-v2.jpg")!,
    )

    // Stores the top inset that was removed by the ignoresSafeArea().
    @State private var topInset: CGFloat = 0

    var body: some View {
        ScrollView {
            NavigationLink {
                EventView(event: event)
            } label: {
                AsyncImage(url: event.coverImage) { image in
                    image
                        .resizable()
                        .aspectRatio(CGSize(width: 124, height: 48), contentMode: .fit)
                } placeholder: {}
                .cornerRadius(20)
                .contentShape(Rectangle())
            }
            .padding(.horizontal, 12)
            .padding(.bottom, 12)
            .padding(.top, 12 + topInset)
        }
        .ignoresSafeArea(edges: .top)
        .toolbarBackground(.hidden, for: .navigationBar)
        .background(
            GeometryReader { geo in
                Color.clear.onAppear { topInset = geo.safeAreaInsets.top }
            }
        )
    }
}

#Preview {
    ExploreView()
}
