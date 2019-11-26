grammar
packageDeclaration 
	^ super packageDeclaration  ==> [:nodes | PJPackageDeclarationNode new 
		annotations: nodes first;
		nameNode: nodes third; 
		yourself
	]