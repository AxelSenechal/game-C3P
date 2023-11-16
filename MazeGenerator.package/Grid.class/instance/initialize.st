initialization
initialize

	|emptyLine|

	emptyLine := OrderedCollection new.

	
	cells := OrderedCollection new.
	cells add:emptyLine.
	
	width := 0.
	height := 0.
	
	walls := OrderedCollection new.
	
	
	