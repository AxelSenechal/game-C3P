tests
testDirectionFunctionalitySouthNorth

	| North South |
	South := Direction North.
	self assert: North dx equals: 0.
	self assert: North dy equals: -1.

	South := North opposite.
	self assert: South dx equals: 0.
	self assert: South dy equals: 1.

	self assert: South opposite equals: North