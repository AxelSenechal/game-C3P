as yet unclassified
testInitializeNorthWalls

	| cell |
	grid := Grid width: 3 height: 3.
	grid initializeWalls.
	self assert: ((grid at: 2 at: 2) north isKindOf: ExistingWall)
	"self assert: grid walls size equals: 6"