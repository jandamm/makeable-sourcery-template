
struct GenericTest<A, B>: Makeable {
	let base: A
	let baseTwo: B
	let descripition: String
}

struct StaticTest: Makeable {
   static let name = "name"
   static var variable = "variable"
   let locked: Bool
}
