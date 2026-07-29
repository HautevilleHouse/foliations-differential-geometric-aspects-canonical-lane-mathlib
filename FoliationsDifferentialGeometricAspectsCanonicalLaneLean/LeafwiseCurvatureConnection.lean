import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure LeafwiseCurvaturePackage where
  leafwiseLeviCivita : Type
  leafwiseRiemannianCurvature : Type
  leafwiseRicciTensor : Type
  leafwiseScalarCurvature : Type
  curvatureCompatibilityWithBottConnection : Prop

def leafwiseCurvatureClosed (P : LeafwiseCurvaturePackage) : Prop :=
  Nonempty P.leafwiseLeviCivita ∧ Nonempty P.leafwiseRicciTensor ∧ P.curvatureCompatibilityWithBottConnection

structure LeafwiseCurvatureEvidence (P : LeafwiseCurvaturePackage) where
  leafwiseLeviCivitaExists : Nonempty P.leafwiseLeviCivita
  leafwiseRicciExists : Nonempty P.leafwiseRicciTensor
  curvatureCompatibilityClosed : P.curvatureCompatibilityWithBottConnection

theorem leafwise_curvature_closed_from_evidence (P : LeafwiseCurvaturePackage) (E : LeafwiseCurvatureEvidence P) : leafwiseCurvatureClosed P :=
  And.intro E.leafwiseLeviCivitaExists (And.intro E.leafwiseRicciExists E.curvatureCompatibilityClosed)

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse