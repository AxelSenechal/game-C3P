as yet unclassified
emptyLine: aWidth

	|emptyLine|

	emptyLine := OrderedCollection new.
	
	1 to: aWidth do: [:f |emptyLine add: Cell new].

	^emptyLine
	