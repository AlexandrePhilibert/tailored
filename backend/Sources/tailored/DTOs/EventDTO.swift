import Vapor

struct EventDTO: Content {
    var id: UUID?
    var name: String
    var date: Date
    var numberOfSeats: Int
    var venue: String?
    
    init(id: UUID? = nil, name: String, date: Date, numberOfSeats: Int, venue: String? = nil) {
        self.id = id
        self.name = name
        self.date = date
        self.numberOfSeats = numberOfSeats
        self.venue = venue
    }
}
