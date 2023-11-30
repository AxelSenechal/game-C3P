running
setUp
	|mazeGenerator|
    grid := Grid new width:  3 height: 3. 
    mazeGenerator := KruskallMazeGenerator new: grid.