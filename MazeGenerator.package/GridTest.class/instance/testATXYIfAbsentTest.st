as yet unclassified
testATXYIfAbsentTest

	| cell |
	grid := Grid width: 3 height: 3.
	cell := grid
		        at: 1
		        at: -1
		        ifAbsent: [ Transcript show: 'Cell not found.' ].
	self assert: ((cell isKindOf: Cell) not)