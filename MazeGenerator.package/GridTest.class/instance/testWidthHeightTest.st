as yet unclassified
testWidthHeightTest

	grid := Grid new.
	grid width: 5 height: 10.

	self assert: grid columns size equals: 10.
	self assert: grid rows size equals: 5