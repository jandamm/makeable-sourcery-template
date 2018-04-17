// Generated using Sourcery 0.11.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length

func makeFile(name: String) -> (_ fileEnding: String) -> (_ locked: Bool) -> File {
    return { fileEnding in { locked in File(name: name, fileEnding: fileEnding, locked: locked) } }
}

func makeUser(name: String) -> (_ id: Int) -> (_ email: String?) -> User {
    return { id in { email in User(name: name, id: id, email: email) } }
}

// swiftlint:enable line_length
