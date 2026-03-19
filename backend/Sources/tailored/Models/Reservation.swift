import Fluent
import Foundation

final class Reservation: Model {
    static let schema = "reservations"

    @ID(key: .id)
    var id: UUID?

    @Parent(key: "event_id")
    var event: Event

    @Field(key: "user_id")
    var userID: UUID

    @Field(key: "expires_at")
    var expiresAt: Date

    @Field(key: "status")
    var status: String

    @Children(for: \.$reservation)
    var reservationSeats: [ReservationSeat]

    init() {}

    init(id: UUID? = nil, event: Event, userID: UUID, expiresAt: Date, status: String) {
        self.id = id
        self.event = event
        self.userID = userID
        self.expiresAt = expiresAt
        self.status = status
    }
}