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

WriteStringIntoDoc( [ "Just", "another", "headline" ] );

SetCurrentAutoDocSection( "Default_section" );

WriteStringIntoDoc( "Another test" );

DeclareCategoryWithDocumentation( "ACategory",
                                  IsObject,
                                  "A test.",
                                  [ "With_chapter_info", "Category_section" ] );

WriteStringIntoDoc( "Text1" : chapter_info := [ "With_chapter_info" ] );

WriteStringIntoDoc( "Text2" : chapter_info := [ "With_chapter_info", "Category_section" ] );

DeclareCategoryWithDoc( "ACategoryWithOptions",
                         IsObject :
                         description := "a description",
                         chapter_info := [ "With_chapter_info", "Category_section" ] );

DeclareCategoryWithDocumentation( "ACategoryWithMoreOptions",
                                  IsObject,
                                  [ "The description", "of it." ],
                                  "an argument",
                                  [ "With_chapter_info", "Category_section" ],
                                  rec( function_label := "alabel" ) );

DeclareCategoryWithDoc( "ACategoryWithMoreOptionsWithOptions",
                        IsObject :
                        description := [ "The description", "of it." ],
                        arguments := "an argument",
                        chapter_info := [ "With_chapter_info", "Category_section" ],
                        function_label := "alabel" );

DeclareCategoryWithDocumentation( "AGroupedCategory",
                                  IsObject,
                                  "Description 1",
                                  rec( group := "category" ) );

DeclareCategoryWithDoc( "AGroupedCategoryWithOptions",
                        IsObject :
                        description := "Description 1",
                        group := "categorywo" );

DeclareCategoryWithDocumentation( "ASecondGroupedCategory",
                                  IsObject,
                                  "Description 2",
                                  rec( group := "category" ) );

DeclareCategoryWithDoc( "ASecondGroupedCategoryWithOptions",
                        IsObject :
                        description := "Description 2",
                        group := "categorywo" );

DeclareRepresentationWithDocumentation( "ARepresentation",
                                  ACategory,
                                  [ ],
                                  "A test.",
                                  [ "With_chapter_info", "Category_section" ] );

DeclareRepresentationWithDoc( "ARepresentationWithOptions",
                              ACategory,
                              [ ] :
                              description := "A test.",
                              chapter_info := [ "With_chapter_info", "Category_section" ] );

DeclareRepresentationWithDocumentation( "ARepresentationWithMoreOptions",
                                  IsObject,
                                  [ ],
                                  [ "The description", "of it." ],
                                  [ "With_chapter_info", "Category_section" ],
                                  rec( function_label := "alabel" ) );

DeclareRepresentationWithDoc( "ARepresentationWithMoreOptionsWithOptions",
                              IsObject,
                              [ ] :
                              description := [ "The description", "of it." ],
                              chapter_info := [ "With_chapter_info", "Category_section" ],
                              function_label := "alabel" );

DeclareRepresentationWithDocumentation( "AGroupedRepresentation",
                                  IsObject,
                                  [ ],
                                  "Description 1",
                                  [ "With_chapter_info", "Category_section" ],
                                  rec( group := "representation" ) );

DeclareRepresentationWithDoc( "AGroupedRepresentationWithOptions",
                              IsObject,
                              [ ] :
                              description := "Description 1",
                              chapter_info := [ "With_chapter_info", "Category_section" ],
                              group := "representation" );

DeclareRepresentationWithDocumentation( "ASecondGroupedRepresentation",
                                  IsObject,
                                  [ ],
                                  "Description 2",
                                  [ "With_chapter_info", "Category_section" ],
                                  rec( group := "representation" ) );

DeclareRepresentationWithDoc( "ASecondGroupedRepresentationWithOptions",
                              IsObject,
                              [ ] :
                              description := "Description 2",
                              chapter_info := [ "With_chapter_info", "Category_section" ],
                              group := "representation" );

DeclarePropertyWithDocumentation( "AProperty",
                                  IsObject,
                                  [ "Description" ],
                                  "argument",
                                  [ "With_chapter_info", "Second_section" ],
                                  rec( function_label := "testproperty" ) );

DeclarePropertyWithDoc( "APropertyWithOptions",
                        IsObject :
                        description := [ "Description" ],
                        arguments := "argument",
                        chapter_info := [ "With_chapter_info", "Second_section" ],
                        function_label := "testproperty" );

DeclarePropertyWithDocumentation( "AnotherProperty",
                                  AGroupedRepresentation,
                                  [ "A very nice description" ] );

DeclarePropertyWithDoc( "AnotherPropertyWithOptions",
                        AGroupedRepresentation :
                        description := [ "A very nice description" ] );

DeclareAttributeWithDocumentation( "AnAttribute",
                                   IsObject,
                                   [ "A description" ],
                                   "another thing",
                                   "ItsArgument",
                                   [ "With_chapter_info", "Attributes" ] );

DeclareAttributeWithDoc( "AnAttributeWithOptions",
                         IsObject :
                         description := [ "A description" ],
                         return_value := "another thing",
                         arguments := "ItsArgument",
                         chapter_info := [ "With_chapter_info", "Attributes" ] );

DeclareAttributeWithDocumentation( "AnotherAttribute",
                                   IsObject,
                                   "AnotherDescription",
                                   "returnvalue" );

DeclareAttributeWithDoc( "AnotherAttributeWithOptions",
                         IsObject :
                         description := "AnotherDescription",
                         return_value := "returnvalue" );

ResetCurrentAutoDocChapter();


DeclareOperationWithDocumentation( "AnOperation",
                                   [ IsObject ],
                                   "Description",
                                   "IsInt",
                                   [ "With_chapter_info", "Operations" ] );

DeclareOperationWithDoc( "AnOperationWithOptions",
                         [ IsObject ] :
                         description := "Description",
                         return_value := "IsInt",
                         chapter_info := [ "With_chapter_info", "Operations" ] );

DeclareOperationWithDocumentation( "GroupedOperation",
                                   [ IsInt ],
                                   "Description 1",
                                   "IsInt",
                                   rec( group := "operationgroup" ) );

DeclareOperationWithDoc( "GroupedOperationWithOptions",
                         [ IsInt ] :
                         description := "Description 1",
                         return_value := "IsInt",
                         group := "operationgroup" );

DeclareOperationWithDocumentation( "GroupedOperation",
                                   [ IsInt, IsInt ],
                                   "Description 2",
                                   "IsInt",
                                   rec( group := "operationgroup" ) );

DeclareOperationWithDoc( "GroupedOperationWithOptions",
                         [ IsInt, IsInt ] :
                         description := "Description 2",
                         return_value := "IsInt",
                         group := "operationgroup" );

DeclareGlobalFunctionWithDocumentation( "ATestGlobalFunction",
                                        [ "This is", "a global function" ],
                                        "Integer",
                                        [ "With_chapter_info", "global" ] );

DeclareGlobalFunctionWithDoc( "ATestGlobalFunctionWithOptions" :
                              description := [ "This is", "a global function" ],
                              return_value := "Integer",
                              chapter_info := [ "With_chapter_info", "global" ] );

DeclareGlobalFunctionWithDocumentation( "AnotherTestGlobalFunction",
                                        "a global function",
                                        "Integer",
                                        "arg" );

DeclareGlobalFunctionWithDoc( "AnotherTestGlobalFunctionWithOptions" :
                              description := "a global function",
                              return_value := "Integer",
                              arguments := "arg" );

DeclareGlobalVariableWithDocumentation( "GlobalVariable",
                                        "I'm a global variable.",
                                        [ "With_chapter_info", "global" ] );

DeclareGlobalVariableWithDoc( "GlobalVariableWithOptions" :
                              description := "I'm a global variable.",
                              chapter_info := [ "With_chapter_info", "global" ] );

DeclareGlobalVariableWithDocumentation( "AnotherGlobalVariable",
                                        "I'm a global variable." );

DeclareGlobalVariableWithDoc( "AnotherGlobalVariableWithOptions" :
                              description := "I'm a global variable." );

DeclareGlobalVariableWithDocumentation( "GroupedGlobalVariable",
                                        "Global 1",
                                        rec( group := "globalvar" ) );

DeclareGlobalVariableWithDoc( "GroupedGlobalVariableWithOptions" :
                                        description := "Global 1",
                                        group := "globalvar" );

DeclareGlobalVariableWithDocumentation( "GroupedGlobalVariable2",
                                        "Global 2",
                                        rec( group := "globalvar" ) );

DeclareGlobalVariableWithDoc( "GroupedGlobalVariable2WithOptions" :
                              description := "Global 2",
                              group := "globalvar" );

InstallMethodWithDocumentation( AnOperation,
                                "short descr.",
                                [ IsObject ],
                                [ "Im an operation" ],
                                "integer",
                                rec( function_label := "for IsObject, installed" ),
                                i -> i+1
                              );

InstallMethodWithDoc( AnOperationWithOptions,
                      "short descr.",
                      [ IsObject ],
                      i -> i+1 :
                      description := [ "Im an operation" ],
                      return_value := "integer",
                      function_label := "for IsObject, installed" );

