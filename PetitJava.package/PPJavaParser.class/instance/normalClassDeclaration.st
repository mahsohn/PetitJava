grammar-classes
normalClassDeclaration
	^ super normalClassDeclaration ==> [ :nodes | 
		PJClassOrInterfaceDeclarationNode new
			modifiers: nodes first;
			name: nodes third name;
			typeParameters: nodes fourth;
			extendedTypes: nodes fifth second;
			isInterface: nodes sixth notNil;
			members: nodes seventh second;
			yourself.
	]