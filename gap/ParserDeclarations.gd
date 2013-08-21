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
#!  The description of it
#! @Arguments an argument
#! @ChapterInfo With_chapter_info, Category section parser
#! @FunctionLabel alabel
DeclareCategory( "ACategoryWithMoreOptionsForParser",
                        IsObject );

#! @Description
#!  Description 1
#! @Group categorywo
DeclareCategory( "AGroupedCategoryForParser",
                        IsObject );

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

#! @Description
#!  The description of it.
#! @ChapterInfo With_chapter_info, Category_section parser
#! @FunctionLabel alabel
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
#! @FunctionLabel testproperty
DeclareProperty( "APropertyForParser",
                        IsObject );

#! @Description 
#!  A very nice description
DeclareProperty( "AnotherPropertyForParser",
                        AGroupedRepresentation );

#! @Description 
#!  A description
#! @ReturnValue another thing
#! @Arguments ItsArgument
#! @ChapterInfo With_chapter_info, Attributes
DeclareAttribute( "AnAttributeForParser",
                         IsObject );

#! @Description 
#!  AnotherDescription
#! @ReturnValue returnvalue
DeclareAttribute( "AnotherAttributeForParser",
                         IsObject );


#! @Section Just another section


#! @Description
#!  Description
#! @ReturnValue IsInt
#! @ChapterInfo With_chapter_info, Operations
DeclareOperation( "AnOperationForParser",
                         [ IsObject ] );
#! @Description
#!  Description 1
#! @ReturnValue IsInt
#! @Group operationgroup
DeclareOperation( "GroupedOperationForParser",
                         [ IsInt ] );
#! @Description
#!  Description 2
#! @ReturnValue IsInt
#! @Group operationgroup
DeclareOperation( "GroupedOperationForParser",
                         [ IsInt, IsInt ] );

#! @Description
#!  This is a global function
#! @ReturnValue Integer
#! @ChapterInfo With_chapter_info, global
DeclareGlobalFunction( "ATestGlobalFunctionForParser" );

#! @Description
#!  a global function
#! @ReturnValue Integer
#! @Arguments arg
DeclareGlobalFunction( "AnotherTestGlobalFunctionForParser" );

#! @Description
#!  I'm a global variable.
#! @ChapterInfo With_chapter_info, global
DeclareGlobalVariable( "GlobalVariableForParser" );

#! @Description
#!  I'm a global variable.
DeclareGlobalVariable( "AnotherGlobalVariableForParser" );

#! @Description 
#!  Global 1
#! @Group globalvar
DeclareGlobalVariable( "GroupedGlobalVariableForParser" );

#! @Description
#!  Global 2",
#! @Group globalvar
DeclareGlobalVariable( "GroupedGlobalVariable2ForParser" );