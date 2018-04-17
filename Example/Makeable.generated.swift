// Generated using Sourcery 0.11.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length

extension File {
    static func make(name: String) -> (_ fileEnding: String) -> (_ locked: Bool) -> (_ owner: User) -> File {
        return { (fileEnding: String) in { (locked: Bool) in { (owner: User) in
            return File(name: name, fileEnding: fileEnding, locked: locked, owner: owner)
        }
        }
        }
    }
}

extension GenericTest {
    static func make(base: A) -> (_ baseTwo: B) -> (_ descripition: String) -> GenericTest {
        return { (baseTwo: B) in { (descripition: String) in
            return GenericTest(base: base, baseTwo: baseTwo, descripition: descripition)
        }
        }
    }
}

extension StaticTest {
    static func make(name: String) -> (_ variable: String) -> (_ locked: Bool) -> StaticTest {
        return { (variable: String) in { (locked: Bool) in
            return StaticTest(name: name, variable: variable, locked: locked)
        }
        }
    }
}

extension User {
    static func make(name: String) -> (_ id: Int) -> (_ email: String?) -> User {
        return { (id: Int) in { (email: String?) in
            return User(name: name, id: id, email: email)
        }
        }
    }
}

// swiftlint:enable line_length
