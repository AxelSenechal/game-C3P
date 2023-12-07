tests
testKruskallReturnsSameSize

	| agrid krus |
	agrid := Grid new width: 5 height: 10.
	krus := KruskallMazeGenerator new.
	krus grid: agrid.
	krus compute.

	self assert: krus grid columns size equals: 10.
	self assert: krus grid rows size equals: 5