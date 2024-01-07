as yet unclassified
findSetFor: aCell inSets: aset
    ^ aset detect: [ :set | set includes: aCell ] ifNone: [ OrderedCollection new ].
