tests
testVerticalSize

|wall|

wall := WallGraphic new.

wall buildWall: true.

self assert: (wall orientation) equals: true.
"self assert: (wall size) equals: (8 @ 80)."