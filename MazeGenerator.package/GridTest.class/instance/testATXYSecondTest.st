as yet unclassified
testATXYSecondTest

	| cell |
	grid := Grid width: 3 height: 3.
	cell := grid at: 2 at: 2.
	self assert: (cell isKindOf: Cell)