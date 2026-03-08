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
        ScrollView {
            AsyncImage(url: event.coverImage) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minHeight: 300)
            } placeholder: {}
        }
        .ignoresSafeArea(edges: .top)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text(event.name)
                    .bold()
                    .foregroundColor(.white)
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    
                } label: {
                    Image("ShareNetwork")
                }
            }
        }
        .safeAreaInset(edge: .bottom) {
            HStack {
                Button {
                    
                } label: {
                    Image("Heart")
                        .frame(width: 24, height: 24)
                        .padding(.horizontal, 4)
                        .padding(.vertical, 8)
                }
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)
                .tint(Color(.systemGray))
                
                Spacer()
                
                Button() {
                    
                } label: {
                    Text("Get tickets").bold()
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .tint(.red)
            }
            .padding()
        }
    }
}

#Preview {
    EventView(
        event: Event(
            name: "Caribana",
            image: URL(string: "https://www.ticketcorner.ch/obj/media/CH-eventim/teaser/222x222/2025/caribana-tickets-2026.jpg")!,
            coverImage: URL(string: "https://www.ticketcorner.ch/obj/media/CH-eventim/teaser/evo/artwork/2025/caribana-festival-tickets-2026-v2.jpg")!,
        )
    )
}
