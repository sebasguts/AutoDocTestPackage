all:	doc


doc:	doc/manual.six 
	
doc/manual.six:	gap/Declarations.gd
	gap createautodoc.g
	gap makedoc.g 
clean:
	rm doc/manual.six
