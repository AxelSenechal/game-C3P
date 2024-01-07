tests
testOppositeOfSouth
    | south north |
    south := Direction south.
    north := south opposite.
    self assert: north equals: (Direction north).