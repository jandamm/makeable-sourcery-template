
struct OnlyOkVariables: Makeable, Equatable {
    static let name = "name"
    static var variable = "variable"
    let ok1: Bool
    let def = "def"
    var ok2: Int
    var ok3 = 1
    var compValue: String {
        return "\(ok1) comp"
    }
}

struct GenericTest<A, B>: Makeable {
    let base: A
    let baseTwo: B
    let descripition: String
}

extension GenericTest: Equatable where A: Equatable, B: Equatable {
    static func == (lhs: GenericTest<A, B>, rhs: GenericTest<A, B>) -> Bool {
        guard lhs.base == rhs.base else { return false }
        guard lhs.baseTwo == rhs.baseTwo else { return false }
        guard lhs.descripition == rhs.descripition else { return false }
        return true
    }
}

struct StaticTest: Makeable, Equatable {
    static let name = "name"
    static var variable = "variable"
    let locked: Bool
}

struct DefaultVariablesTest: Makeable, Equatable {
    let def = "def"
    var variable: Int
}

struct ComputedVariablesTest: Makeable, Equatable {
    let value: String

    var compValue: String {
        return "\(value) comp"
    }
}
