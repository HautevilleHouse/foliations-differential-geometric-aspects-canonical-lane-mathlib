import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure HolonomyPackage where
  holonomyGroupoid : Type
  holonomyInfinitesimalGauge : Prop
  leafSpaceHausdorff : Prop
  completeTransversalHolonomy : Prop

def holonomyClosed (P : HolonomyPackage) : Prop :=
  P.holonomyInfinitesimalGauge ∧ P.leafSpaceHausdorff ∧ P.completeTransversalHolonomy

structure HolonomyEvidence (P : HolonomyPackage) where
  holonomyInfinitesimalGaugeClosed : P.holonomyInfinitesimalGauge
  leafSpaceHausdorffClosed : P.leafSpaceHausdorff
  completeTransversalHolonomyClosed : P.completeTransversalHolonomy

theorem holonomy_closed_from_evidence (P : HolonomyPackage) (E : HolonomyEvidence P) : holonomyClosed P :=
  And.intro E.holonomyInfinitesimalGaugeClosed (And.intro E.leafSpaceHausdorffClosed E.completeTransversalHolonomyClosed)

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse