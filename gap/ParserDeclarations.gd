#############################################################################
##
##  Parser.gd                            AutoDocTestPackage
##
##  Copyright 2013 Sebastian Gutsche, University of Kaiserslautern
##
##  This is not a working package, only a test.
##
#############################################################################


#! @AutoDoc

#! @Chapter Default chapter parser

#! Just
#! another
#! headline

#! @Section Parser default section

#! Another test

#! @Description
#!  A test.
#! @ChapterInfo With_chapter_info, Category section parser
DeclareCategory( "ACategoryForParser",
                 IsObject );

#! @Description
#! My first info class. Really. I've never
#! used this before!
DeclareInfoClass( "MyInfoClass" );

#! @Description
#! An info class with chapter info.
#! Cool?
#! @ChapterInfo With_chapter_info, Info section
DeclareInfoClass( "AnotherInfoClass" );

## FIXME: Label is missing

#! @Description 
#!  The description of it
#! @Arguments an argument
#! @ChapterInfo With_chapter_info, Category section parser
#! @Label alabel
DeclareCategory( "ACategoryWithMoreOptionsForParser",
                        IsObject );

#! @Chunk MyChunk
#! First line of chunk


#! @Description
#!  Description 1
#! @Group categorywo
DeclareCategory( "AGroupedCategoryForParser",
                 IsObject );

#! @Chunk MyChunk
#! Second line of chunk

#! @Description 
#! Description 2
#! @Group categorywo
DeclareCategory( "ASecondGroupedCategoryForParser",
                        IsObject );



#! @Description
#! A test.
#! @ChapterInfo With_chapter_info, Category_section parser
DeclareRepresentation( "ARepresentationForParser",
                              ACategoryForParser,
                              [ ] );

## FIXME: Label is missing

#! @Description
#!  The description of it.
#! @ChapterInfo With_chapter_info, Category_section parser
#! @Label alabel
DeclareRepresentation( "ARepresentationWithMoreOptionsForParser",
                              IsObject,
                              [ ] );


#! @Description
#!  Description 1
#! @ChapterInfo With_chapter_info, Category_section parser
#! @Group representation
DeclareRepresentation( "AGroupedRepresentationForParser",
                              IsObject,
                              [ ] );

#! @Description
#!  Description 2
#! @ChapterInfo With_chapter_info, Category_section parser
#! @Group representation
DeclareRepresentation( "ASecondGroupedRepresentationForParser",
                              IsObject,
                              [ ] );

#! @Description 
#!  Description
#! @Arguments argument
#! @ChapterInfo With_chapter_info, Second_section
#! @Label testproperty
DeclareProperty( "APropertyForParser",
                        IsObject );

#! @Description 
#!  A very nice description
DeclareProperty( "AnotherPropertyForParser",
                        AGroupedRepresentation );

#! @InsertChunk MyChunk

#! @Description 
#!  A description
#! @Returns another thing
#! @Arguments ItsArgument
#! @ChapterInfo With_chapter_info, Attributes
DeclareAttribute( "AnAttributeForParser",
                         IsObject );

#! @Description 
#!  AnotherDescription
#! @Returns returnvalue
DeclareAttribute( "AnotherAttributeForParser",
                         IsObject );


#! @Section Just another section


#! @Description
#!  Description
#! @Returns IsInt
#! @ChapterInfo With_chapter_info, Operations
DeclareOperation( "AnOperationForParser",
                         [ IsObject ] );
#! @Description
#!  Description 1
#! @Returns IsInt
#! @Group operationgroup
DeclareOperation( "GroupedOperationForParser",
                         [ IsInt ] );
#! @Description
#!  Description 2
#! @Returns IsInt
#! @Group operationgroup
DeclareOperation( "GroupedOperationForParser",
                         [ IsInt, IsInt ] );

#! @Description
#!  This is a global function
#! @Returns Integer
#! @ChapterInfo With_chapter_info, global
DeclareGlobalFunction( "ATestGlobalFunctionForParser" );

#! @Description
#!  a global function
#! @Returns Integer
#! @Arguments arg
DeclareGlobalFunction( "AnotherTestGlobalFunctionForParser" );

#! @Description
#!  I'm a global variable.
#! @ChapterInfo With_chapter_info, global
DeclareGlobalVariable( "GlobalVariableForParser" );

#! @Chunk testinstall
#! bla
#! @EndChunk
InstallMethod( GroupedOperationForParser,
               [ IsInt, IsInt],
               TrueFunc );

#! @SetLevel 1



#! @Description
#!  I'm a global variable.
DeclareGlobalVariable( "AnotherGlobalVariableForParser" );

#! @Description 
#!  Global 1
#! @Group globalvar
DeclareGlobalVariable( "GroupedGlobalVariableForParser" );

#! @Description
#!  Global 2
#! @Group globalvar
DeclareGlobalVariable( "GroupedGlobalVariable2ForParser" );

#! @SetLevel 2



#! @Description
#!  Some stuff here
InstallMethod( MyMethod,
               [ IsStuff, IsThings ],
               
  function( c, bla )
    
    
end );

#! @Description
#!  Other stuff here.
#! @Arguments bla, bla
InstallMethod( MyOtherMethod,
               [ IsToricVariety, IsOtherStuff ],
               
  function( bla )
    
    
end );

#! @ResetLevel
