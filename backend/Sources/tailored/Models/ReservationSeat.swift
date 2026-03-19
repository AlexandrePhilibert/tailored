import Fluent
import Foundation

// Join table between Reservation and Seat
final class ReservationSeat: Model {
    static let schema = "reservation_seats"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "reservation id")
    var reservationID: UUID

    @Field(key: "seat id")
    var seatID: UUID

    init() {}

    init(id: UUID? = nil, reservationID: UUID, seatID: UUID) {
        self.id = id
        self.reservationID = reservationID
        self.seatID = seatID
    }
}