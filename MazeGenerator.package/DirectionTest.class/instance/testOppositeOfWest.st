tests
testOppositeOfWest

	| west east |
	west := Direction west.
	east := west opposite.
	self assert: east equals: Direction east