adding
addBefore: anObjectOrLink
	"Add anObjectOrLink to the beginning of the list."

	| newLink |
	newLink := anObjectOrLink asDoubleLink.

	newLink nextLink: head.
	head ifNotNil: [
		head previousLink ifNotNil: [ head previousLink nextLink: newLink ] ].

	head := newLink.
	tail ifNil: [ tail := newLink ].

	^ newLink