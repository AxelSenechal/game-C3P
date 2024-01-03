accessing
carvePassage: c

	| directions cx cy nc |
	directions := self shuffleDirections.
	c cellVisited.
	directions do: [ :d |
		cx := c x + d dx.
		cy := c y + d dy.
		(self cellExist: cx y: cy )  ifTrue: [
			[ (grid at: cx at: cy) isVisited not ]ifTrue: [
			nc := grid at: cx at: cy.
			c addNeighbour: nc direction: d.
			nc addNeighbour: c direction: d oppositeDirection.
			self carvePassage: nc ] ]
			]
			