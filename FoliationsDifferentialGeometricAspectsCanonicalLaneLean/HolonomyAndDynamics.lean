import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure HolonomyPackage where
  holonomyGroupoidDefined : Prop
  holonomyPseudogroup : Prop
  germEvaluation : Prop
  iteratedHolonomy : Prop
  recurrentLeafSet : Prop
  leafGrowth : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  holonomyGroupoidDefinedClosed : H.holonomyGroupoidDefined
  holonomyPseudogroupClosed : H.holonomyPseudogroup
  germEvaluationClosed : H.germEvaluation
  iteratedHolonomyClosed : H.iteratedHolonomy
  recurrentLeafSetClosed : H.recurrentLeafSet
  leafGrowthClosed : H.leafGrowth

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.holonomyGroupoidDefined ∧ H.holonomyPseudogroup ∧ H.germEvaluation ∧ H.iteratedHolonomy ∧ H.recurrentLeafSet ∧ H.leafGrowth

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) : HolonomyClosed H :=
  And.intro E.holonomyGroupoidDefinedClosed
    (And.intro E.holonomyPseudogroupClosed
      (And.intro E.germEvaluationClosed
        (And.intro E.iteratedHolonomyClosed
          (And.intro E.recurrentLeafSetClosed E.leafGrowthClosed))))

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse