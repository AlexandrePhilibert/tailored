import Fluent
import Foundation

final class Seat: Model, @unchecked Sendable {
    static let schema = "seats"

    @ID(key: .id)
    var id: UUID?

    // Foreign key to the Event model
    @Parent(key: "event_id")
    var event: Event

    @Field(key: "seat_number")
    var seatNumber: Int

    @Field(key: "status")
    var status: SeatStatus

    @Children(for: \.$seat)
    var reservationSeats: [ReservationSeat]

    init() {}

    init(id: UUID? = nil, event: Event, seatNumber: Int, status: SeatStatus) {
        self.id = id
        self.event = event
        self.seatNumber = seatNumber
        self.status = status
    }
}