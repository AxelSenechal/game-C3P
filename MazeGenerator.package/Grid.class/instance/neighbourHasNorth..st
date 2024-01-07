testing
neighbourHasNorth: celln

	| y1 |
	y1 := celln y.
	y1 := y1 + 1.
	^ (self at: celln x at: y1) north isNotNil