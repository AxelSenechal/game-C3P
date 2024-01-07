initialization
initializeCells
    1 to: width do: [ :x |
        1 to: height do: [ :y |
            self addCellAt: x and: y.
        ].
    ].