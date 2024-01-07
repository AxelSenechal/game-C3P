accessing
play
|space|
space := BlSpace new.

	space root addChild: (gridgraph draw).
	space extent: 1000 @ 1000.
	space show