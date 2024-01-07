initialization
initializeBetween: aCell1 and: aCell2 inGrid: aGrid
    "Initialize the wall between two cells in a maze if there is no wall already."

    (aGrid hasWallBetween: aCell1 and: aCell2) ifTrue: [ ^ self ].

    cell1 := aCell1.
    cell2 := aCell2.