as yet unclassified
initCatAndEdges2

	| catNum |
	catNum := 1.
	1 to: grid columns size do: [ :i |
		1 to: grid rows size do: [ :j |
			self initCategories2: i j: j catNum: catNum.
			catNum := catNum + 1 ] ]