initialization
initializeWalls
	"Initialize walls for the maze, ensuring each wall has references to the cells it separates."

	| cell northWall eastWall southWall westWall |
	northWall := ExistingWall new.
	eastWall := ExistingWall new.
	southWall := ExistingWall new.
	westWall := ExistingWall new.

	" première boucle pour définir tous les walls east et north"
	1 to: width do: [ :x |
		1 to: height do: [ :y |
			cell := self at: x at: y.

			northWall
				initializeBetween: cell
				and: (self at: x at: y - 1 ifAbsent: [ nil ])
				inGrid: self.

			eastWall
				initializeBetween: cell
				and: (self at: x + 1 at: y ifAbsent: [ nil ])
				inGrid: self.

			cell north: northWall.
			cell east: eastWall.
			walls add: northWall.
			walls add: eastWall ] ].

	" deuxième boucle pour définir tous les walls west et south ou de linker à partir des walls déja existants"

	width to: 1 do: [ :x |
		height to: 1 do: [ :y |
			cell := self at: x at: y.
			cell x: x.
			cell y: y.
			(self neighbourHasNorth: cell)
				ifTrue: [ cell south: (self northNeighbour: cell) north ]
				ifFalse: [
					southWall
						initializeBetween: cell
						and: (self at: x at: y + 1 ifAbsent: [ nil ])
						inGrid: self.
					cell south: southWall. 
					walls add: southWall].
				
			(self neighbourHasEast: cell)
				ifTrue: [ cell west: (self eastNeighbour: cell) east ]
				ifFalse: [
					westWall
						initializeBetween: cell
						and: (self at: x - 1 at: y ifAbsent: [ nil ])
						inGrid: self.
					cell west: westWall. 
					walls add: westWall.].



			 ] ]