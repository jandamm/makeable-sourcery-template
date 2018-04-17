
struct User: Makeable, Equatable {
    let name: String
    let id: Int
    let email: String?
}

struct File: Makeable, Equatable {
    let name: String
    let fileEnding: String
    let locked: Bool
    var owner: User
}
