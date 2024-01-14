tests
testNorthInitialization
    | north |
    north := Direction north.
    self assert: north dx equals: 0.
    self assert: north dy equals: -1.