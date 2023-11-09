adding
add: anObject

	| link |
	link := MyLink new value: anObject.


	head ifNil: [ head := link ].
	link previous: tail.
	tail ifNotNil: [ tail next: link ].
	tail := link.
	^ link