import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure RiemannianFoliationPackage where
  leafwiseMetric : Type
  transverseMetric : Type
  bundleLikeMetric : Prop
  meanCurvatureVanishing : Prop
  minimalLeaves : Prop

def riemannianFoliationClosed (P : RiemannianFoliationPackage) : Prop :=
  P.bundleLikeMetric ∧ P.meanCurvatureVanishing ∧ P.minimalLeaves

structure RiemannianFoliationEvidence (P : RiemannianFoliationPackage) where
  bundleMetricClosed : P.bundleLikeMetric
  meanCurvatureClosed : P.meanCurvatureVanishing
  minimalLeavesClosed : P.minimalLeaves

theorem riemannian_foliation_closed_from_evidence (P : RiemannianFoliationPackage) (E : RiemannianFoliationEvidence P) : riemannianFoliationClosed P :=
  And.intro E.bundleMetricClosed (And.intro E.meanCurvatureClosed E.minimalLeavesClosed)

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse