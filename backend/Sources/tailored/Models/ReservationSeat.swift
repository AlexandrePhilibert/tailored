import Fluent
import Foundation

// Join table between Reservation and Seat
final class ReservationSeat: Model {
    static let schema = "reservation_seats"

    @ID(key: .id)
    var id: UUID?

    @Parent(key: "reservation_id")
    var reservation: Reservation

    @Parent(key: "seat_id")
    var seat: Seat

    init() {}

    init(id: UUID? = nil, reservation: Reservation, seat: Seat) {
        self.id = id
        self.reservation = reservation
        self.seat = seat
    }
}