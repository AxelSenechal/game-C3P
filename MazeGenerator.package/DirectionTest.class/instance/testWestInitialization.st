tests
testWestInitialization
    | west |
    west := Direction west.
    self assert: west dx equals: -1.
    self assert: west dy equals: 0.