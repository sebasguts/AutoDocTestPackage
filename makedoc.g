##  this creates the documentation, needs: GAPDoc package, latex, pdflatex,
##  mkindex, dvips
##  
##  Call this with GAP.
##

if fail = LoadPackage("AutoDoc", ">= 2016.01.21") then
    Error("AutoDoc 2016.01.21 or newer is required");
fi;

AutoDoc(
    rec(
        scaffold := rec(
            includes := [
                "_AutoDocMainFile.xml",
                "handwritten.xml",
                ],
            appendix := [ "appendix.xml" ],
        ),
        autodoc := rec(
            level := 1,
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
PrintTo( "VERSION", GAPInfo.PackageInfoCurrent.Version );

## QUIT;

