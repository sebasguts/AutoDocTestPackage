##  this creates the documentation, needs: GAPDoc package, latex, pdflatex,
##  mkindex, dvips
##  
##  Call this with GAP.
##

LoadPackage("AutoDoc");

AutoDoc(
    "AutoDocTestPackage",
    rec(
        scaffold := rec(
            includes := [
                "AutoDocMainFile.xml",
                "handwritten.xml",
                ],
            appendix := [ "appendix.xml" ],
        ),
        autodoc := rec(
            section_intros :=
                [
                  [ "Intro", "This is a test docu" ],
                  [ "With_chapter_info", "This is a user set chapter" ],
                  [ "With_chapter_info", "Category_section", [ "This section", "is for categories" ] ]
                ],
        ),
    )
);

# Create VERSION file for "make towww"
PrintTo( "VERSION", PackageInfo( "AutoDocTestPackage" )[1].Version );

QUIT;

