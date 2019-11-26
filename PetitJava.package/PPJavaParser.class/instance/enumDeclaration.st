grammar-classes
enumDeclaration
	
	^ super enumDeclaration ==> [ :nodes | 
		| node implementedTypes entries members|
		nodes fourth ifNotNil: [ 
			node := nodes fourth second.
			implementedTypes := OrderedCollection newFrom:{ node first }.
			node second size isZero ifFalse: [ node second do: [ :n | implementedTypes add: n second ] ].
			implementedTypes := implementedTypes asArray.
		].
		nodes fifth ifNotNil: [ 
			node := nodes fifth second.
			entries := OrderedCollection newFrom:{ node first }.
			node second size isZero ifFalse: [ node second do: [ :n | entries add: n second ] ].
			entries := entries asArray.
		].
		nodes fifth fourth ifNotNil: [ members := nodes fifth fourth second asArray ].
		PJEnumDeclarationNode new
			annotations: (nodes first select: [ :n | n class = PJAnnotationNode ]);
			modifiers: (nodes first select: [ :n | n class = PJModifierNode ]);
			name: nodes third name;
			implementedTypes: implementedTypes;
			entries: entries;
			members: members;
			yourself.
	]