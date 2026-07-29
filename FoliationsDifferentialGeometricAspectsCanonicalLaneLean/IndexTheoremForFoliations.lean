import FoliationsDifferentialGeometricAspectsCanonicalLaneLean.ConnectionsAndCurvature

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure IndexTheoremPackage {C : FoliationsConnectionPackage} (H : FoliationsConnectionEvidence C) where
  analyticIndex : Prop
  topologicalIndex : Prop
  indexEquality : Prop
  leafwiseContribution : Prop
  transverseContribution : Prop
  indexClosed : Prop

structure IndexTheoremEvidence {C : FoliationsConnectionPackage} {H : FoliationsConnectionEvidence C} (I : IndexTheoremPackage H) where
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  indexEqualityClosed : I.indexEquality
  leafwiseContributionClosed : I.leafwiseContribution
  transverseContributionClosed : I.transverseContribution
  indexClosed : I.indexClosed

def IndexTheoremClosed {C : FoliationsConnectionPackage} {H : FoliationsConnectionEvidence C} (I : IndexTheoremPackage H) : Prop :=
  I.analyticIndex ∧ I.topologicalIndex ∧ I.indexEquality ∧ I.leafwiseContribution ∧ I.transverseContribution ∧ I.indexClosed

theorem index_theorem_closed_from_evidence {C : FoliationsConnectionPackage} {H : FoliationsConnectionEvidence C} (I : IndexTheoremPackage H) (E : IndexTheoremEvidence I) : IndexTheoremClosed I :=
  And.intro E.analyticIndexClosed
    (And.intro E.topologicalIndexClosed
      (And.intro E.indexEqualityClosed
        (And.intro E.leafwiseContributionClosed
          (And.intro E.transverseContributionClosed E.indexClosed))))

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse