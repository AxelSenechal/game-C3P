accessing
DirectionAt: c1 c2: c2 
       | x y destX destY |
        x := c1 x.
        y := c1 y.
        destX := c2 x.
        destY := c2 y.
        (Direction values) do: [ :d |
            (x + (d x) = destX and: [y + (d y) = destY]) ifTrue: [
                ^d.
            ].
        ].

        ^nil.
    