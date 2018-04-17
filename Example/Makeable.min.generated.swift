// Generated using Sourcery 0.11.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length

extension File {
    static func make(name: String) -> (_ fileEnding: String) -> (_ locked: Bool) -> (_ owner: User) -> File {
        return { fileEnding in { locked in { owner in File(name: name, fileEnding: fileEnding, locked: locked, owner: owner) } } }
    }
}

extension GenericTest {
    static func make(base: A) -> (_ baseTwo: B) -> (_ descripition: String) -> GenericTest {
        return { baseTwo in { descripition in GenericTest(base: base, baseTwo: baseTwo, descripition: descripition) } }
    }
}

extension StaticTest {
    static func make(name: String) -> (_ variable: String) -> (_ locked: Bool) -> StaticTest {
        return { variable in { locked in StaticTest(name: name, variable: variable, locked: locked) } }
    }
}

extension User {
    static func make(name: String) -> (_ id: Int) -> (_ email: String?) -> User {
        return { id in { email in User(name: name, id: id, email: email) } }
    }
}

// swiftlint:enable line_length
