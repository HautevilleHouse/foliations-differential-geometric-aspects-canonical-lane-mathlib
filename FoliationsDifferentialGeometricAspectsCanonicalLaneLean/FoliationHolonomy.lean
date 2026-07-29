import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure FoliationHolonomyPackage where
  holonomyGroupoid : Type u
  holfCatonomy : Prop
  holonomyInfinitesimal : Prop
  holonomyClosedGeodesic : Prop

structure FoliationHolonomyEvidence (Hpkg : FoliationHolonomyPackage) where
  holonomyInfinitesimalClosed : Hpkg.holonomyInfinitesimal
  holonomyClosedGeodesicClosed : Hpkg.holonomyClosedGeodesic

def FoliationHolonomyClosed (Hpkg : FoliationHolonomyPackage) : Prop :=
  Hpkg.holonomyInfinitesimal ∧ Hpkg.holonomyClosedGeodesic

theorem foliation_holonomy_closed_from_evidence (Hpkg : FoliationHolonomyPackage)
    (E : FoliationHolonomyEvidence Hpkg) : FoliationHolonomyClosed Hpkg := by
  exact And.intro E.holonomyInfinitesimalClosed E.holonomyClosedGeodesicClosed

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse