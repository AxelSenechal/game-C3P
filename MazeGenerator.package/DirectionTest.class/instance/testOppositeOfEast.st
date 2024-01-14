tests
testOppositeOfEast
    | east west |
    east := Direction east.
    west := east opposite.
    self assert: west equals: (Direction west).