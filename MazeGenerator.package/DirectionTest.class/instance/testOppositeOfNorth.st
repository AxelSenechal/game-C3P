tests
testOppositeOfNorth
    | north south |
    north := Direction north.
    south := north opposite.
    self assert: south equals: (Direction south).