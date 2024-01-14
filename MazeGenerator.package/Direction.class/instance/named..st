accessing
named: aName 
        ^self allInstances detect: [ :inst | inst name = aName ] ifNone: [ nil ].
    