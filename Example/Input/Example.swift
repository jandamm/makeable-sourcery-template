
struct User: Makeable {
    let name: String
    let id: Int
    let email: String?
}

struct File: Makeable {
    let name: String
    let fileEnding: String
    let locked: Bool
    var owner: User
}

