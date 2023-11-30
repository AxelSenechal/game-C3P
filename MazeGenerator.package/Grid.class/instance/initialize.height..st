initialization
initialize: awidth height: aheight 

	|emptyLine|

	emptyLine := OrderedCollection new.

self width: awidth.
self height: aheight.
	
	cells := OrderedCollection new.
	cells add:emptyLine.
	
	
	walls := OrderedCollection new.
	cells := (Array new: width) collect: [ :each | (Array new: height) collect: [ :cell | Cell new ]].
	
	