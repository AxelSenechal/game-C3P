accessing
visitExistingWall: aWall
|wallgraph|
wallgraph := WallGraphic new.
wallgraph buildWall:true.
^ wallgraph.