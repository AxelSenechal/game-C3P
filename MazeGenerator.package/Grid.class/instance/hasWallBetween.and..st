testing
hasWallBetween: cell1 and: cell2
    "Return true if there is already a wall between the two given cells."
    
    (cell1 isNil or: [ cell2 isNil ]) ifTrue: [ ^ false ].

    ^ (cell1 north = cell2 south or: [ cell1 south = cell2 north or: [ cell1 east = cell2 west or: [ cell1 west = cell2 east ] ] ])