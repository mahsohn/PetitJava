grammar
packageDeclaration 

	^ annotations optional, (self tokenFor: 'package') , qualifiedName , (self tokenFor: ';')