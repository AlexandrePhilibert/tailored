import Fluent
import Foundation

final class Seat: Model {
    static let schema = "seats"

    @ID(key: .id)
    var id: UUID?

    // Foreign key to the Event model
    @Field(key: "event id")
    var eventID: UUID

    @Field(key: "seat number")
    var seatNumber: Int

    @Field(key: "status")
    var status: String

    init() {}

    init(id: UUID? = nil, eventID: UUID, seatNumber: Int, status: String) {
        self.id = id
        self.eventID = eventID
        self.seatNumber = seatNumber
        self.status = status
    }
}