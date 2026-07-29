import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure FoliationIndexTheoryPackage where
  leafwiseIndex : Type u
  foliationBundles : Type v
  signatureTheorem : Prop
  indexTheorem : Prop
  cyclicCohomology : Type w

structure FoliationIndexTheoryEvidence (Ipkg : FoliationIndexTheoryPackage) where
  signatureTheoremClosed : Ipkg.signatureTheorem
  indexTheoremClosed : Ipkg.indexTheorem

def FoliationIndexTheoryClosed (Ipkg : FoliationIndexTheoryPackage) : Prop :=
  Ipkg.signatureTheorem ∧ Ipkg.indexTheorem

theorem foliation_index_theory_closed_from_evidence (Ipkg : FoliationIndexTheoryPackage)
    (E : FoliationIndexTheoryEvidence Ipkg) : FoliationIndexTheoryClosed Ipkg := by
  exact And.intro E.signatureTheoremClosed E.indexTheoremClosed

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse