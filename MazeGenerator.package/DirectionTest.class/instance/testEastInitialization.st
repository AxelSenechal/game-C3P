tests
testEastInitialization
    | east |
    east := Direction east.
    self assert: east dx equals: 1.
    self assert: east dy equals: 0.