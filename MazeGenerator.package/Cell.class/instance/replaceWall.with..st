accessing
replaceWall: oldWall with: newWall
    "Replace the specified wall in this cell with a new wall."
    (oldWall = self north) ifTrue: [ north := newWall ].
    (oldWall = self east) ifTrue: [ east := newWall ].
    (oldWall = self south) ifTrue: [ south := newWall ].
    (oldWall = self west) ifTrue: [ west := newWall ].