tests
testShuffleDirections

	| directions directionsShuffled |
	directions := Direction allInstances.
	"directionsShuffled := backTracking shuffleDirections."
	self assert: directions size equals: 1.
	self deny: directions equals: directionsShuffled