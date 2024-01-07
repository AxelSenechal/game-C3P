as yet unclassified
testATXYIfAbsentTest2

	| cell |
	grid := Grid width: 3 height: 3.
	cell := grid at: 1 at: -1 ifAbsent: [ nil ].
	self assert: (cell isNil )