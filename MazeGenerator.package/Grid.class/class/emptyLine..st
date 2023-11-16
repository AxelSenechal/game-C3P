as yet unclassified
emptyLine: aWidth

	|emptyLine|

	emptyLine := OrderedCollection new.
	
	1 to: aWidth do: [emptyLine add: Cell new].

	^emptyLine