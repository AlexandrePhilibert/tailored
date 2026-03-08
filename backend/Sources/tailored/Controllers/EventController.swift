import Vapor

struct EventController: RouteCollection {
    func boot(routes: any RoutesBuilder) throws {
        let events = routes.grouped("events")

        events.get(use: self.index)
        events.post(use: self.create)

        events.group(":eventID") { event in
            event.get(use: self.show)
            event.put(use: self.update)
            event.delete(use: self.delete)
        }
    }

    @Sendable
    func index(req: Request) async throws -> [EventDTO] {
        return [EventDTO]()
    }

    @Sendable
    func create(req: Request) async throws -> EventDTO {
        return EventDTO()
    }

    @Sendable
    func show(req: Request) async throws -> EventDTO {
        return EventDTO()
    }

    @Sendable
    func update(req: Request) async throws -> EventDTO {
        return EventDTO()
    }

    @Sendable
    func delete(req: Request) async throws -> HTTPStatus {
        return .noContent
    }

}
