as yet unclassified
testATXYTest

	| cell |
	grid := Grid width: 3 height: 3.
	cell := grid at: 1 at: 1.
	self assert: (cell isKindOf: Cell)