//
//  BaseTests.swift
//  Tests
//
//  Created by Jan Dammshäuser on 26.04.18.
//

import XCTest

class BaseTests: XCTestCase {

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
}
