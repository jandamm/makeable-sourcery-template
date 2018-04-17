// Generated using Sourcery 0.11.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length

extension ComputedVariablesTest {
    static func make(value: String) -> ComputedVariablesTest {
        return
            ComputedVariablesTest(value: value)
    }
}

extension DefaultVariablesTest {
    static func make(variable: Int) -> DefaultVariablesTest {
        return
            DefaultVariablesTest(variable: variable)
    }
}

extension File {
    static func make(name: String) -> (_ fileEnding: String) -> (_ locked: Bool) -> (_ owner: User) -> File {
        return { (fileEnding: String) in { (locked: Bool) in { (owner: User) in
            File(name: name, fileEnding: fileEnding, locked: locked, owner: owner)
        } } }
    }
}

extension GenericTest {
    static func make(base: A) -> (_ baseTwo: B) -> (_ descripition: String) -> GenericTest {
        return { (baseTwo: B) in { (descripition: String) in
            GenericTest(base: base, baseTwo: baseTwo, descripition: descripition)
        } }
    }
}

extension OnlyOkVariables {
    static func make(ok1: Bool) -> (_ ok2: Int) -> (_ ok3: Int) -> OnlyOkVariables {
        return { (ok2: Int) in { (ok3: Int) in
            OnlyOkVariables(ok1: ok1, ok2: ok2, ok3: ok3)
        } }
    }
}

extension StaticTest {
    static func make(locked: Bool) -> StaticTest {
        return
            StaticTest(locked: locked)
    }
}

extension User {
    static func make(name: String) -> (_ id: Int) -> (_ email: String?) -> User {
        return { (id: Int) in { (email: String?) in
            User(name: name, id: id, email: email)
        } }
    }
}

// swiftlint:enable line_length
