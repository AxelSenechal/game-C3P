instance creation
initialize
    "Initialise les directions uniques"
    North := self new.
    North name: 'North'.
    North dx: 0.
    North dy: -1.
    North opposite: 'South'.

    South := self new.
    South name: 'South'.
    South dx: 0.
    South dy: 1.
    South opposite: 'North'.

    East := self new.
    East name: 'East'.
    East dx: 1.
    East dy: 0.
    East opposite: 'West'.

    West := self new.
    West name: 'West'.
    West dx: -1.
    West dy: 0.
    West opposite: 'East'.
