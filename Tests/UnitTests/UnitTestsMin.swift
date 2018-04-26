//
//  UnitTestsMin.swift
//  UnitTestsMin
//
//  Created by Jan Dammshäuser on 26.04.18.
//

import XCTest

class UnitTestsMin: BaseTests {

	func testMake() {
		let computed = ComputedVariablesTest.make(com.value)
		XCTAssertEqual(computed, com)

		let defaultVar = DefaultVariablesTest.make(def.variable)
		XCTAssertEqual(defaultVar, def)

		let generic = GenericTest.make(gen.base)(gen.baseTwo)(gen.descripition)
		XCTAssertEqual(generic, gen)

		let only = OnlyOkVariables.make(onl.ok1)(onl.ok2)(onl.ok3)
		XCTAssertEqual(only, onl)

		let stat = StaticTest.make(sta.locked)
		XCTAssertEqual(stat, sta)

		let file = File.make(fil.name)(fil.fileEnding)(fil.locked)(fil.owner)
		XCTAssertEqual(file, fil)

		let user = User.make(use.name)(use.id)(use.email)
		XCTAssertEqual(user, use)
	} 
}
