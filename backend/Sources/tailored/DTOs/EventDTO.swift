import Vapor

struct EventDTO: Content {
    var id: UUID?
    var name: String
    var date: Date
    var venue: String?

    init() {}
    
    init(id: UUID? = nil, name: String, date: Date, venue: String? = nil) {
        self.id = id
        self.name = name
        self.date = date
        self.venue = venue
    }

    func toModel() -> Event {
        Event(name: self.name, date: self.date, venue: self.venue)
    }

    static func fromModel(_ event: Event) -> EventDTO {
        EventDTO(id: event.id, name: event.name, date: event.date, venue: event.venue)
    }
}
