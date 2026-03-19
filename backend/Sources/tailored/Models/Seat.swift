import Fluent
import Foundation

final class Seat: Model, @unchecked Sendable {
    static let schema = "seats"

    @ID(key: .id)
    var id: UUID?

    // Foreign key to the Event model
    @Parent(key: "event_id")
    var event: Event

    @Field(key: "number")
    var number: Int

    @Field(key: "status")
    var status: SeatStatus

    @Children(for: \.$seat)
    var reservationSeats: [ReservationSeat]

    init() {}

    init(id: UUID? = nil, event: Event, number: Int, status: SeatStatus) {
        self.id = id
        self.event = event
        self.number = number
        self.status = status
    }
}