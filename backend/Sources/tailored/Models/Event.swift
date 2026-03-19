import Fluent
import Foundation

final class Event: Model, @unchecked Sendable {
    static let schema = "events"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "name")
    var name: String

    @Field(key: "date")
    var date: Date

    @Field(key: "venue")
    var venue: String?

    @Children(for: \.$event)
    var seats: [Seat]

    init() {}

    init(id: UUID? = nil, name: String, date: Date, venue: String? = nil) {
        self.id = id
        self.name = name
        self.date = date
        self.venue = venue
    }
}