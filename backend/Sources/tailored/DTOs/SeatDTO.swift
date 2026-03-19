import Vapor

struct SeatDTO: Content {
    var id: UUID?
    var eventID: UUID
    var number: Int
    var status: SeatStatus

    init() {
        self.eventID = UUID()
        self.number = 0
        self.status = .available
    }
    
    init(id: UUID? = nil, eventID: UUID, number: Int, status: SeatStatus) {
        self.id = id
        self.eventID = eventID
        self.number = number
        self.status = status
    }

    func toModel() -> Seat {
        let seat = Seat()
        seat.$event.id = self.eventID
        seat.number = self.number
        seat.status = self.status
        return seat
    }

    static func fromModel(_ seat: Seat) -> SeatDTO {
        SeatDTO(id: seat.id, eventID: seat.$event.id, number: seat.number, status: seat.status)
    }
}