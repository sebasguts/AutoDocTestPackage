#! @Title Categories in GAP
#! @Author Sebastian Posur

#! @Chapter First example

#! @Section Example

#! @Example
C := CreateCategory( );
SetName( C, "C" );
X := CreateObject( C );
SetName( X, "X" );
SetIsInitial( X, true );
A := CreateObject( C );
SetName( A, "A" );
H := Hom( C, X, A );
f := CreateMorphism( H );
#! <The morphism X -> A>
g := CreateMorphism( H );
IsIdenticalObj( f, g );
#! true
I := CreateCategory( );
SetName( I, "I" );
IC := CreateFunctorCategory( I, C );
F := CreateObject( IC );
IsConstant( F );
#! Error, no method found
G := CreateConstantFunctor( IC, A );
#! <a constant functor I -> C with value A>
phi := CreateMorphism( I );
Source( phi );
#! <An unnamed object in I>
Source( phi ) = Range( phi );
#! fail
Gphi := ApplyFunctor( G, phi );
#! <The identity morphism of A>
Source( Gphi );
#! A
Source( Gphi ) = Range( Gphi )
#! true
L := Limit( G );
#! <The limit of a constant functor I -> C with value A>
L in C;
#! false
UnderlyingCategory( L );
#! <The slice category Delta( [ I, C ]  ) | F>
IsTerminal( L );
#! true
L in UnderlyingCategory( L );
#! true
UL := UnderlyingNaturalTransformation( L );
#! <a natural transformation Delta( [ I, C ]  ) -> F>
UnderlyingCategory( UL );
#! <The category of morphisms of [ I, C ]>
Source( UL );
#! <A constant functor in [ I, C ]>
Value( Source( UL ) );
#! <An object in C>
J := CreateCategory( );
SetName( J, "J" );
SetObjects( J, [ 1, 2, 3 ] );
MList := [ CreateMorphism( J, 1, 2 ), CreateMorphism( J, 3, 2 ) ];
SetMorphisms( J, MList );
B := CreateObject( C );
Y := CreateObject( C );
g1 := CreateMorphism( C, A, Y );
g2 := CreateMorphism( C, B, Y );
JC := CreateFunctorCategory( J, C );
P12 := CreateObject( JC, [ [ MList[ 1 ], g1 ], [ MList[ 2 ], g2 ] ] );
P12 := Limit( P12 );
#! <The limit of a functor in [ J, C ]>
UnderlyingCategory( P12 );
#! <The slice category Delta( [ J, C ] ) | P12>
UL := UnderlyingNaturalTransformation( P12 );
#! <A natural transformation Delta( [ J, C ] ) -> P12>
PI_A := Evaluate( UL, 1 );
#! <A morphism UL(1)->A in C>
D := CreateObject( C );
g3 := CreateMorphism( C, D, A );
P3PI_A := CreateObject( JC, [ [ MList[ 1 ], g3 ], [ MList[ 2 ], PI_A ] ] );
P3PI_A := Limit( P3PI_A );
P := CreateObject( JC, [ [ MList[ 1 ], PreCompose( g1, g3 ) ],
                         [ MList[ 2 ], g2 ] ] );
P := Limit( P );
IsIsomorphic( Value( Source( UnderlyingNaturalTransformation( P ) ) ),
              Value( Source( UnderlyingNaturalTransformation( P3PI_A ) ) ) );
#! true
#! @EndExample