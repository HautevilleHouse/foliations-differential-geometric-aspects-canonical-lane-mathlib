import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure FoliatedBundlePackage where
  totalSpace : Type u
  baseSpace : Type v
  projection : totalSpace → baseSpace
  leafDimension : Nat
  codimension : Nat
  leavesAreSubmanifolds : Prop
  holonomyPseudogroup : Type w
  leafwiseRiemannianMetric : Prop

def twistedPeriodicityCondition (P : FoliatedBundlePackage) : Prop :=
  P.leavesAreSubmanifolds ∧ P.leafwiseRiemannianMetric

structure FoliatedBundleEvidence (P : FoliatedBundlePackage) where
  projectionSubmersive : P.projection isSubmersion
  leafDimensionCorrect : P.leafDimension = codimension totalSpace - dim baseSpace
  holonomyExists : Nonempty P.holonomyPseudogroup

theorem foliated_bundle_closed (P : FoliatedBundlePackage) (E : FoliatedBundleEvidence P) : twistedPeriodicityCondition P :=
  And.intro E.projectionSubmersive (by exact E.leafDimensionCorrect)

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse