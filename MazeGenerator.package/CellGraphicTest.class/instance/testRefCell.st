tests
testRefCell
|cellg cell|

cell := Cell new.

cellg := CellGraphic new.

cellg refcell: cell.

self assert: (cellg refcell) equals: cell.
