grammar-classes
normalInterfaceDeclaration
	^ super normalInterfaceDeclaration ==> [ :nodes | 
		PJClassOrInterfaceDeclarationNode new
			annotations: (nodes first first);
			modifiers: (nodes first second);
			name: nodes third name;
			typeParameters: nodes fourth;
			implementedTypes: nodes fifth second; 
			members: nodes sixth asArray;
			isInterface: true;
			yourself.
	]