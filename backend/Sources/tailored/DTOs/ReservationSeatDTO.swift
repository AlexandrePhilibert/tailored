import Vapor

struct ReservationSeatDTO: Content {
    var id: UUID?
    var reservationID: UUID
    var seatID: UUID

    init() {
        self.reservationID = UUID()
        self.seatID = UUID()
    }
    
    init(id: UUID? = nil, reservationID: UUID, seatID: UUID) {
        self.id = id
        self.reservationID = reservationID
        self.seatID = seatID
    }

    func toModel() -> ReservationSeat {
        let reservationSeat = ReservationSeat()
        reservationSeat.$reservation.id = self.reservationID
        reservationSeat.$seat.id = self.seatID
        return reservationSeat
    }

    static func fromModel(_ reservationSeat: ReservationSeat) -> ReservationSeatDTO {
        ReservationSeatDTO(id: reservationSeat.id, reservationID: reservationSeat.$reservation.id, seatID: reservationSeat.$seat.id)
    }
}