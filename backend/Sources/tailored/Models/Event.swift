import Fluent
import Foundation

final class Event: Model {
    static let schema = "events"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "name")
    var name: String

    @Field(key: "date")
    var date: Date

    @Field(key: "number of seats")
    var numberOfSeats: Int

    @Field(key: "venue")
    var venue: String?

    init() {}

    init(id: UUID? = nil, name: String, date: Date, numberOfSeats: Int, venue: String? = nil) {
        self.id = id
        self.name = name
        self.date = date
        self.numberOfSeats = numberOfSeats
        self.venue = venue
    }
}