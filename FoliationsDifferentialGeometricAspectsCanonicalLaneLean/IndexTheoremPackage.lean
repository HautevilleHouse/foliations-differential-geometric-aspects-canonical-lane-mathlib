import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure IndexTheoremPackage where
  leafwiseOperator : Type u
  analyticIndex : Type v
  topologicalIndex : Type w
  indexEquality : Prop
  indexEqualityClosed : indexEquality

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  indexEqualityClosed : I.indexEquality

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.indexEquality

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact E.indexEqualityClosed

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse
