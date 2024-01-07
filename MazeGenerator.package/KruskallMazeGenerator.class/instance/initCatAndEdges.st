as yet unclassified
initCatAndEdges 
        | catNum |

        catNum := 0.
        1 to: grid columns size do: [ :i |
            1 to: grid rows size do: [ :j |
                self initEdges: i j: j.
                self initCategories: i j: j catNum: catNum.
                catNum := catNum + 1.
            ].
        ].