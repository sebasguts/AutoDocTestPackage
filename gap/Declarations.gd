#############################################################################
##
##  Declarations.gd                            AutoDocTestPackage
##
##  Copyright 2013 Sebastian Gutsche, University of Kaiserslautern
##
##  This is not a working package, only a test.
##
#############################################################################

SetCurrentAutoDocChapter( "Default_chapter" );
SetCurrentAutoDocSection( "Default_section" );

DeclareCategoryWithDocumentation( "ACategory",
                                  IsObject,
                                  "A test.",
                                  [ "With_chapter_info", "Category_section" ] );

DeclareCategoryWithDocumentation( "ACategoryWithMoreOptions",
                                  IsObject,
                                  [ "The description", "of it." ],
                                  "an argument",
                                  [ "With_chapter_info", "Category_section" ],
                                  rec( function_label := "alabel" ) );

DeclareCategoryWithDocumentation( "AGroupedCategory",
                                  IsObject,
                                  "Description 1",
                                  rec( group := "category" ) );

DeclareCategoryWithDocumentation( "ASecondGroupedCategory",
                                  IsObject,
                                  "Description 2",
                                  rec( group := "category" ) );

DeclareRepresentationWithDocumentation( "ARepresentation",
                                  ACategory,
                                  [ ],
                                  "A test.",
                                  [ "With_chapter_info", "Category_section" ] );

DeclareRepresentationWithDocumentation( "ARepresentationWithMoreOptions",
                                  IsObject,
                                  [ ],
                                  [ "The description", "of it." ],
                                  [ "With_chapter_info", "Category_section" ],
                                  rec( function_label := "alabel" ) );

DeclareRepresentationWithDocumentation( "AGroupedRepresentation",
                                  IsObject,
                                  [ ],
                                  "Description 1",
                                  [ "With_chapter_info", "Category_section" ],
                                  rec( group := "representation" ) );

DeclareRepresentationWithDocumentation( "ASecondGroupedRepresentation",
                                  IsObject,
                                  [ ],
                                  "Description 2",
                                  [ "With_chapter_info", "Category_section" ],
                                  rec( group := "representation" ) );

DeclarePropertyWithDocumentation( "AProperty",
                                  IsObject,
                                  [ "Description" ],
                                  "argument",
                                  [ "With_chapter_info", "Second_section" ],
                                  rec( function_label := "testproperty" ) );

DeclarePropertyWithDocumentation( "AnotherProperty",
                                  AGroupedRepresentation,
                                  [ "A very nice description" ] );

DeclareAttributeWithDocumentation( "AnAttribute",
                                   IsObject,
                                   [ "A description" ],
                                   "another thing",
                                   "ItsArgument",
                                   [ "With_chapter_info", "Attributes" ] );

DeclareAttributeWithDocumentation( "AnotherAttribute",
                                   IsObject,
                                   "AnotherDescription",
                                   "returnvalue" );

UnsetCurrentAutoDocChapter();


DeclareOperationWithDocumentation( "AnOperation",
                                   [ IsObject ],
                                   "Description",
                                   "IsInt",
                                   [ "With_chapter_info", "Operations" ] );

DeclareOperationWithDocumentation( "GroupedOperation",
                                   [ IsInt ],
                                   "Description 1",
                                   "IsInt",
                                   rec( group := "operationgroup" ) );

DeclareOperationWithDocumentation( "GroupedOperation",
                                   [ IsInt, IsInt ],
                                   "Description 2",
                                   "IsInt",
                                   rec( group := "operationgroup" ) );

DeclareGlobalFunctionWithDocumentation( "ATestGlobalFunction",
                                        [ "This is", "a global function" ],
                                        "Integer",
                                        [ "With_chapter_info", "global" ] );

DeclareGlobalFunctionWithDocumentation( "AnotherTestGlobalFunction",
                                        "a global function",
                                        "Integer",
                                        "arg" );

DeclareGlobalVariableWithDocumentation( "GlobalVariable",
                                        "I'm a global variable.",
                                        [ "With_chapter_info", "global" ] );

DeclareGlobalVariableWithDocumentation( "AnotherGlobalVariable",
                                        "I'm a global variable." );

DeclareGlobalVariableWithDocumentation( "GroupedGlobalVariable",
                                        "Global 1",
                                        rec( group := "globalvar" ) );

DeclareGlobalVariableWithDocumentation( "GroupedGlobalVariable2",
                                        "Global 2",
                                        rec( group := "globalvar" ) );

InstallMethodWithDocumentation( AnOperation,
                                "short descr.",
                                [ IsObject ],
                                [ "Im an operation" ],
                                "integer",
                                rec( function_label := "for IsObject, installed" ),
                                i -> i+1
                              );

