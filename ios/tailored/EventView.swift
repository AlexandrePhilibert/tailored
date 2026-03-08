//
//  EventView.swift
//  tailored
//
//  Created by Alexandre Philibert on 2026.03.08.
//

import SwiftUI

struct EventView: View {
    var event: Event
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            AsyncImage(url: event.coverImage) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minHeight: 300)
            } placeholder: {}
            
            HStack {
                Text("Concert: Crans, Switzerland")
                    .bold()
                Spacer()
            }
            .padding(.horizontal)
            
            Spacer(minLength: 8)

            HStack(alignment: .center, spacing: 24) {
                VStack(alignment: .leading, spacing: 6) {
                    Text("17").bold()
                    Text("June")
                }
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Tuesday").bold()
                    Text("21:00 - 23:00")
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image("CalendarDots")
                        // TODO: We can probably improve this
                        .frame(width: 24, height: 24)
                        .padding(.horizontal, 4)
                        .padding(.vertical, 8)
                        .foregroundColor(.white)
                }
                .tint(.gray)
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(edges: .top)
        .scrollEdgeEffectHidden()
        .scrollBounceBehavior(.basedOnSize)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { presentationMode.wrappedValue.dismiss() }) {
                    Image("CaretLeft")
                        .foregroundColor(.white)
                }
            }
    
            
            ToolbarItem(placement: .principal) {
                Text(event.name)
                    .font(Font.title2.bold())
                    .foregroundColor(.white)
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    
                } label: {
                    Image("ShareNetwork")
                        .foregroundColor(.white)
                }
            }
        }
        .safeAreaInset(edge: .bottom) {
            HStack {
                Button {
                    
                } label: {
                    Image("Heart")
                        .foregroundColor(.white)
                        .frame(width: 24, height: 24)
                        .padding(.horizontal, 4)
                        .padding(.vertical, 8)
                }
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)
                .tint(Color.gray)
                
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
