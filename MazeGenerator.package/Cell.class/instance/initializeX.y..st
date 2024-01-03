initialization
initializeX: anX y: aY
    x := anX.
    y := aY.
    neighbours := Dictionary new.
    visited := false.
    ^self.