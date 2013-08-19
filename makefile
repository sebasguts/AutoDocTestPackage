all:	doc

doc:	doc/manual.six 
	
doc/manual.six:	gap/Declarations.gd makedoc.g
	gap makedoc.g 

clean:
	rm doc/manual.six
