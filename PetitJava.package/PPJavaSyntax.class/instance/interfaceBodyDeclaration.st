grammar-classes-interface
interfaceBodyDeclaration 

	^ fieldDeclaration
	/ interfaceMethodDeclaration
	/ interfaceDeclaration 
	/ classDeclaration 
	/ (self tokenFor: ';')