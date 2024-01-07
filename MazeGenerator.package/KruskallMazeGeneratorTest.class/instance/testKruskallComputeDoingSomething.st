tests
testKruskallComputeDoingSomething

	| agrid krus |
	agrid := Grid new width: 5 height: 10.
	krus := KruskallMazeGenerator new.
	krus grid: agrid.
	krus initCatAndEdges.

	self assert: krus catIndex keys isEmpty not