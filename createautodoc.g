LoadPackage( "AutoDoc" );

Reset( GlobalMersenneTwister, 0 );

CreateAutomaticDocumentation( "AutoDocTestPackage", "gap/documentation_file.d", "doc/", true, [ [ "Intro", "This is a test docu" ],
                                                                                                [ "With_chapter_info", "This is a user set chapter" ],
                                                                                                [ "With_chapter_info", "Category_section", [ "This section", "is for categories" ] ] ] );

QUIT;
