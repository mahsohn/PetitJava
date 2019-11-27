grammar-classes-interface
classModifiers
	^super classModifiers ==> [:nodes | 
		{ 
		(nodes select: [ :n | n class = PJAnnotationNode ]) asArray. 
		(nodes select: [ :n | n class = PJModifierNode ]) asArray 
		}
	]