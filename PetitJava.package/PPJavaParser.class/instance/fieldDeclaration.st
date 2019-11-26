grammar-classes
fieldDeclaration
		
		"^ fieldModifiers , type , variableDeclarators , (self tokenFor: ';')"
		^ super fieldDeclaration ==> [:nodes | PJFieldDeclarationNode new 
		modifiers: nodes first;
		type: nodes second;
		variables: nodes third;
		yourself
		]