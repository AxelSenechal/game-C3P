tests
testKruskallInitCatAndEdges

	| agrid krus |
	agrid := Grid new width: 5 height: 10.
	krus := KruskallMazeGenerator new.
	krus grid: agrid.
	krus initCatAndEdges2.

	self assert: (krus grid at: 2 at: 2) equals: 5 * 1 + 2.
	self assert: (krus grid at: 3 at: 2) equals: 5 * 2.
	