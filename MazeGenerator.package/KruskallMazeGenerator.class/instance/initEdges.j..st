as yet unclassified
initEdges: i j: j [
        | xEast yEast xSouth ySouth east south|
		
		  east := Direction new.
		  east initializeWithClass: 'EAST' dx:0 dy:0.
		  south := Direction initializeWithClass: 'SOUTH' dx:0 dy:0.
		
        xEast := i + (east x).
        yEast := j + ( east y).
        xSouth := i + (south x).
        ySouth := j + (south y).

        (self cellExist: xEast  y:yEast) ifTrue: [
            edges add: (Dictionary new
                at: 1 put: (grid at: i at: j);
                at: 2 put: (grid at: xEast at: yEast)).
        ].

        (self cellExist: xSouth y:ySouth) ifTrue: [
            edges add: (Dictionary new
                at: 1 put: (grid at: i at: j);
                at: 2 put: (grid at: xSouth at: ySouth)).
        ].
]