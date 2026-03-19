import Vapor

struct ReservationDTO: Content {
    var id: UUID?
    var eventID: UUID
    var userID: UUID
    var expiresAt: Date
    var status: ReservationStatus

    init() {
        self.eventID = UUID()
        self.userID = UUID()
        self.expiresAt = Date()
        self.status = .ongoing
    }
    
    init(id: UUID? = nil, eventID: UUID, userID: UUID, expiresAt: Date, status: ReservationStatus) {
        self.id = id
        self.eventID = eventID
        self.userID = userID
        self.expiresAt = expiresAt
        self.status = status
    }

    func toModel() -> Reservation {
        let reservation = Reservation()
        reservation.$event.id = self.eventID
        reservation.userID = self.userID
        reservation.expiresAt = self.expiresAt
        reservation.status = self.status
        return reservation
    }

    static func fromModel(_ reservation: Reservation) -> ReservationDTO {
        ReservationDTO(id: reservation.id, eventID: reservation.$event.id, userID: reservation.userID, expiresAt: reservation.expiresAt, status: reservation.status)
    }
}
