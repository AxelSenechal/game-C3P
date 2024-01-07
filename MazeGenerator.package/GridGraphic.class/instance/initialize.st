initialization
initialize 
super initialize. 
self layout: BlGridLayout vertical .
self constraintsDo: [ :aLayoutConstraints | aLayoutConstraints horizontal fitContent. aLayoutConstraints vertical fitContent ].
cellsg := OrderedCollection new.
grid := Grid new.
gvisitor := GraphicVisitor new.