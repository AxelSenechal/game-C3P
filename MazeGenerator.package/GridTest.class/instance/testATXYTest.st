as yet unclassified
testATXYTest

|agrid cell line|

agrid  := Grid new width: 3 height: 3.
cell := agrid at:1 at: 1.


self assert: (cell isKindOf: Cell ).
