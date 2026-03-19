import Fluent
import Foundation

final class Reservation: Model {
    static let schema = "reservations"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "user id")
    var userID: UUID

    @Field(key: "expires at")
    var expiresAt: Date

    @Field(key: "status")
    var status: String

    init() {}

    init(id: UUID? = nil, userID: UUID, expiresAt: Date, status: String) {
        self.id = id
        self.userID = userID
        self.expiresAt = expiresAt
        self.status = status
    }
}