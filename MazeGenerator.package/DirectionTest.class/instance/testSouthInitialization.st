tests
testSouthInitialization
    | south |
    south := Direction south.
    self assert: south dx equals: 0.
    self assert: south dy equals: 1.
