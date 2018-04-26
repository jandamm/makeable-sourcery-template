//
//  UnitTests.swift
//  UnitTests
//
//  Created by Jan Dammshäuser on 17.04.18.
//

import XCTest

class UnitTests: BaseTests {

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
