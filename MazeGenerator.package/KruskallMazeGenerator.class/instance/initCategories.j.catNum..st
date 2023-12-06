as yet unclassified
initCategories: i j: j catNum: catNum 
        | currentCell catCells |
        currentCell  := grid at: i at: j.
        catCells := { currentCell  } asOrderedCollection.
        catIndex at: currentCell  put: catNum.
        categories at: catNum put: catCells .