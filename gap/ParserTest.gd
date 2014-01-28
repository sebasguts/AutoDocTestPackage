#############################################################################
##
##                             AutoDocTestPackage
##
##  Copyright 2013 Sebastian Gutsche, University of Kaiserslautern
##
##  This is not a working package, only a test.
##
#############################################################################


#!
DeclareOperation( "SomeStuff", [ IsList, IsList ] );

DeclareOperation( "MoreStuff", [ IsList, IsThings ] );




DeclareOperation( "NoStuff", [ IsList, IsStuff ] );




#! @AutoDoc

#! @Chapter ParserTest
#!  This tests the parser.
#!  Nothing else.
##  This line should not be read.

#! @Section ParserTestSection
#!  This is a section description.
#!  Something that descibes a section. Bla Bla.

## Now something competely different.

#! @Description
#! Some description for a function.
#! this should appear there.
#! @Returns something
#! @Arguments arguments
DeclareOperation( "SomeOperation", [ IsList, IsStuff ] );

## Now we should test a category and an attribute maybe.

#! @Returns a value
#! @Description
#! Another description here.
## Do not scan this
DeclareAttribute( "AnAttributeWithStuff", IsToricVariety );


#! @Section Another section in this chapter
#! This is another section.
#! It has a group in it. Watch out.

#! @BeginGroup DuWarstJaNichtInMeinerGruppe
#! @Description
#! A category
DeclareCategory( "MyCategory", IsObject );
DeclareCategory( "AlsoMyCategory", IsObject );

#! @EndGroup

#! @BeginGroup Group1

#! @Description
#!  First sentence.
DeclareOperation( "FirstOperation", [ IsInt ] );

#! @Description
#!  Second sentence.
DeclareOperation( "SecondOperation", [ IsInt, IsGroup ] );

#! @EndGroup

## .. Stuff ..

#! @Description
#!  Third sentence.
#! @Group Group1
KeyDependentOperation( "ThirdOperation", IsGroup, IsInt, "prime );

#! @Description
#! Some key dependent operation
KeyDependentOperation( "MyKDOperation", IsGroup, IsInt, "prime" );

#! @Chapter Syntax extension test

#! Normal line
#! 
#! * point 1
#! * point 2
#!   - subpoint 1
#!   - subpoint 2
#! * point 3
#! End of list
#! New list
#! + point 1
#!   The first part is marked.
#! + point 2
#! + sublist 1
#! + $$Display math$$
#! + $Math$
#! End of list again
#  this is not in a list
#!  **Emphasize**
#!  __also__
#!  **Maybe more then
#!  one line**
#!  this neither.


