accessing
size

	| counter current |
	counter := 0.
	current := head.
	head ifNil: [ counter := 0 ] ifNotNil: [
		head hasNext ifTrue: [ counter += 1 ].
		head hasNext ifFalse: [
			
			counter := 1 ] ].
	^ counter