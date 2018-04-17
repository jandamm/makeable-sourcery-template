//
//  UnitTests.swift
//  UnitTests
//
//  Created by Jan Dammshäuser on 17.04.18.
//

import XCTest

class UnitTests: XCTestCase {
    var com: ComputedVariablesTest!
    var def: DefaultVariablesTest!
    var gen: GenericTest<String, Double>!
    var onl: OnlyOkVariables!
    var sta: StaticTest!

    var fil: File!
    var use: User!

    override func setUp() {
        super.setUp()

        com = ComputedVariablesTest(value: "test")
        def = DefaultVariablesTest(variable: 123)
        gen = GenericTest(base: "base", baseTwo: 99, descripition: "desc")
        onl = OnlyOkVariables(ok1: true, ok2: 666, ok3: 99)
        sta = StaticTest(locked: false)

        use = User(name: "John", id: 12, email: nil)
        fil = File(name: "test", fileEnding: "pdf", locked: true, owner: use)
    }

    override func tearDown() {
        com = nil
        def = nil
        gen = nil
        onl = nil
        sta = nil

        fil = nil
        use = nil

        super.tearDown()
    }

    func testMake() {
        let computed = ComputedVariablesTest.make(value: com.value)
        XCTAssertEqual(computed, com)

        let defaultVar = DefaultVariablesTest.make(variable: def.variable)
        XCTAssertEqual(defaultVar, def)

        let generic = GenericTest.make(base: gen.base)(gen.baseTwo)(gen.descripition)
        XCTAssertEqual(generic, gen)

        let only = OnlyOkVariables.make(ok1: onl.ok1)(onl.ok2)(onl.ok3)
        XCTAssertEqual(only, onl)

        let stat = StaticTest.make(locked: sta.locked)
        XCTAssertEqual(stat, sta)

        let file = File.make(name: fil.name)(fil.fileEnding)(fil.locked)(fil.owner)
        XCTAssertEqual(file, fil)

        let user = User.make(name: use.name)(use.id)(use.email)
        XCTAssertEqual(user, use)
    }
}
