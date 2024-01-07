as yet unclassified
testInitializeWalls

	| cell |
	grid := Grid width: 2 height: 2.
	grid initializeWalls.
	self assert: grid walls size equals: 12