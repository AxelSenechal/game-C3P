as yet unclassified
initCatAndEdges 
        | catNum |

        catNum := 0.
        1 to: width do: [ :i |
            1 to: height do: [ :j |
                self initEdges: i j: j.
                self initCategories: i j: j catNum: catNum.
                catNum := catNum + 1.
            ].
        ].