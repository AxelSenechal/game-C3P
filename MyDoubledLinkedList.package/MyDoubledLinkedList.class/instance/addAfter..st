adding
addAfter: anObject

	| newLink |
	newLink := anObject asDoubleLink.

	newLink previousLink: tail.

	tail ifNotNil: [ tail nextLink: newLink ].

	head ifNil: [ head := newLink ].

	tail := newLink.

	^ newLink