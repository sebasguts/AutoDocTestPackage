LoadPackage( "AutoDoc" );

# HACK: We reset the random number generator here so that
# to ensure that the generated docs stay identical when
# regenerating the docs. This way, we can add the generated
# docs to the repository, which in turn allows us to quickly
# test whether anything changed (so we can regression test
# AutoDoc more easily).
#
# For regular packages using AutoDoc, this is *not* necessary.
# In particular, we recommend not adding generated documentation
# to the repository.
Reset( GlobalMersenneTwister, 0 );

CreateAutomaticDocumentation(
    "AutoDocTestPackage",
    "gap/documentation_file.d",
    "doc/",
    true,
    [
      [ "Intro", "This is a test docu" ],
      [ "With_chapter_info", "This is a user set chapter" ],
      [ "With_chapter_info", "Category_section", [ "This section", "is for categories" ] ]
    ] );

QUIT;
