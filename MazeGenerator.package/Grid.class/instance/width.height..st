instance creation
width: aWidth height: aHeight


	
	cells := OrderedCollection new.
	
	1 to: aHeight do: [:f | cells add: (self emptyLine: aWidth)].
	
	 ^ self
	
	
	



	
	
	