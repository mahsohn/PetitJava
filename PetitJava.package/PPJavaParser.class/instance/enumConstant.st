grammar-classes-enum
enumConstant
	^ super enumConstant ==> [:nodes | 
		PJEnumConstantDeclarationNode new 
			annotations: nodes first;
			name: nodes second;
			arguments: nodes third;
			classBody: nodes fourth;
			yourself
		]