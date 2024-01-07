accessing
shuffleDirections
    | directions shuffledDirections rand |
    directions := Direction allInstances.
    shuffledDirections := directions copy.
    rand := Random new.
    1 to: shuffledDirections size do: [:i | 
        | randomIndex temp |
        randomIndex := (rand next * shuffledDirections size) asInteger.
        temp := shuffledDirections at: randomIndex.
        shuffledDirections at: randomIndex put: (shuffledDirections at: i).
        shuffledDirections at: i put: temp.
    ].
    ^shuffledDirections.