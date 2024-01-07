accessing
visitCell: aCell
|cellgraph|
cellgraph := CellGraphic new.
cellgraph refcell: aCell.
self cellsgraph add: cellgraph.