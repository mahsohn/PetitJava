grammar-classes-interface
interfaceModifiers
	^super interfaceModifiers ==> [:nodes | 
		{ 
		(nodes select: [ :n | n class = PJAnnotationNode ]) asArray. 
		(nodes select: [ :n | n class = PJModifierNode ]) asArray 
		}
	]