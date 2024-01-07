drawing
draw
|lines hlines|
lines := OrderedCollection new.
hlines := OrderedCollection new.


1 to: (grid height) do: [ :y | 

	1 to: (grid width) do: [ :x | 
		
		"North walls"
		hlines add: GridGraphic new.
		(hlines at: y) addChild: (((grid at: x at: y) north accept: gvisitor) orientation: false).
		
		
		
		lines add: GridGraphic new.
		
		"West walls"
		(lines at:y) addChild: ((grid at: x at:y) west accept: gvisitor).
		(lines at:y) addChild: ((grid at: x at:y) accept: gvisitor).
		].
		(lines at:y) addChild: ((grid at: (grid width) at:y) east accept: gvisitor).
	
	(lines at: y) layout: BlGridLayout horizontal.
		(hlines at: y) layout: BlGridLayout horizontal.
	self addChild: (hlines at:y).
	self addChild: (lines at:y).

].

1 to: (grid width) do: [ :x|
	
	"South walls, only at the end"
		hlines add: GridGraphic new.
		(hlines at: (grid height)+1) addChild: (((grid at: x at: (grid height)) south accept: gvisitor) orientation: false).
	
	 ].
		(hlines at: (grid height)+1) layout: BlGridLayout horizontal.
	self addChild: (hlines at:(grid height)+1).