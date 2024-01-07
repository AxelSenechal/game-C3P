drawing
draw
|lines|
lines := OrderedCollection new.

1 to: (grid height) do: [ :y | 

	1 to: (grid width) do: [ :x | 
		lines add: GridGraphic new.
		(lines at:y) addChild: ((grid at: x at:y) accept: gvisitor).
		].
	(lines at: y) layout: BlGridLayout horizontal  .
	self addChild: (lines at:y).

].
