accessing
at: x at: y ifAbsent: aBlock

	^ (cells at: x ifAbsent: [ ^ aBlock value ]) at: y ifAbsent: [ ^ aBlock value ]