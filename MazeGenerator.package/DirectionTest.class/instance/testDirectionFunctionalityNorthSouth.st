tests
testDirectionFunctionalityNorthSouth

	| north south |
	north := Direction north.
	self assert: north dx equals: 0.
	self assert: north dy equals: -1.

	south := north opposite.
	self assert: south dx equals: 0.
	self assert: south dy equals: 1.

	self assert: south opposite equals: north