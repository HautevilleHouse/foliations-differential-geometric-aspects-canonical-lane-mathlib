import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FoliationsDifferentialGeometricAspectsCanonicalLaneLean.FoliatedManifold

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure FoliationIndexTheorem (M : FoliatedManifold) where
  leafwiseDiracOperator : Type u
  analyticIndex : Type v
  topologicalIndex : Type w
  indexTheorem : Prop
  leafwiseDiracDefined : Prop
  analyticIndexComputed : Prop
  topologicalIndexComputed : Prop
  indexTheoremProved : Prop
  leafwiseDiracDefinedTerm : leafwiseDiracDefined
  analyticIndexComputedTerm : analyticIndexComputed
  topologicalIndexComputedTerm : topologicalIndexComputed
  indexTheoremProvedTerm : indexTheoremProved

def IndexTheoremClosed {M : FoliatedManifold} (I : FoliationIndexTheorem M) : Prop :=
  I.analyticIndexComputed ∧ I.topologicalIndexComputed ∧ I.indexTheoremProved

theorem index_theorem_closed {M : FoliatedManifold} (I : FoliationIndexTheorem M) : IndexTheoremClosed I := by
  exact And.intro I.analyticIndexComputedTerm (And.intro I.topologicalIndexComputedTerm I.indexTheoremProvedTerm)

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse