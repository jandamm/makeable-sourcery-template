// Generated using Sourcery 0.11.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length

extension File {
    static func make(name: String) -> (_ fileEnding: String) -> (_ locked: Bool) -> File {
        return { (fileEnding: String) in { (locked: Bool) in
            return File(name: name, fileEnding: fileEnding, locked: locked)
        }
        }
    }
}

extension User {
    static func make(name: String) -> (_ id: Int) -> (_ email: String) -> User {
        return { (id: Int) in { (email: String) in
            return User(name: name, id: id, email: email)
        }
        }
    }
}

// swiftlint:enable line_length
