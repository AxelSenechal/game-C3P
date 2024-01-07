as yet unclassified
createMaze

	| agrid set1 set2 nextWall |
	agrid := Grid new.

	agrid initializeWalls.
	agrid initializeSets.
	agrid shuffleWalls.

	[ grid sets size > 1 ] whileTrue: [
		nextWall := agrid walls removeFirst.
		set1 := agrid findSetFor: nextWall cell1 inSets: agrid sets.
		set2 := agrid findSetFor: nextWall cell2 inSets: agrid sets.

		set1 = set2 ifTrue: [ ^ self createMaze ]. "Skip if in the same set"

		set1 addAll: set2.
		agrid sets remove: set2

		"nextWall cell1 replaceWall: nextWall with: EmptyWall new."
		"nextWall cell2 replaceWall: nextWall with: EmptyWall new." ]