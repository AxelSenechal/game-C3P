initialization
initializeBetween: aCell1 and: aCell2

	(aCell1 isNil or: [ aCell2 isNil ]) ifFalse: [ ^ self ].
	cell1 := aCell1.
	cell2 := aCell2