grammar-annotations
annotationTypeElementDeclaration
	
	^ annotationMethodDeclaration
	/ fieldDeclaration 
	/ normalClassDeclaration
	/ enumDeclaration 
	/ annotationTypeDeclaration 
	/ (self tokenFor: ';')