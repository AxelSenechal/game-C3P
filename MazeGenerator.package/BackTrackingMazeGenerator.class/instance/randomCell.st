accessing
randomCell
    | rand rx ry |
    rand := Random new.
    rx := (rand next * width) truncated.
    ry := (rand next * height) truncated.
    ^grid at: rx at: ry.
