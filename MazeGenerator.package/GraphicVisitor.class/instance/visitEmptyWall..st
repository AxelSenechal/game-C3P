accessing
visitEmptyWall: aWall
|wallgraph|
wallgraph := WallGraphic new.
wallgraph break.
wallgraph buildWall:true.
^ wallgraph.