tests
testInitializeBetweenC1C2

	| cell1 cell2 |
	grid := Grid width: 3 height: 3.
	cell1 := grid at: 1 at: -1 ifAbsent: [ nil ].
	cell2 := grid at: 1 at: 2  ifAbsent: [ nil ].
	
	self assert: cell1  isNil