as yet unclassified
testWidthHeightClassTest

	grid := Grid width: 5 height: 10.
	self assert: grid columns size equals: 10.
	self assert: grid rows size equals: 5