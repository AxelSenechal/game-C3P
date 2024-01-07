accessing
buildWall: anOrientation
orientation := anOrientation.
orientation
ifTrue:[ self size: 8 @ 80. ]
ifFalse:[ self size: 92 @ 8. ]