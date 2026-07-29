import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FoliationsDifferentialGeometricAspectsCanonicalLaneLean.FoliatedManifold

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure LeafwiseRiemannianMetric (M : FoliatedManifold) where
  leafwiseMetric : Type u
  leafwiseLeviCivita : Type v
  leafwiseRiemannTensor : Type w
  leafwiseRicciTensor : Type x
  leafwiseScalarCurvature : Type y
  metricSmooth : Prop
  leafwiseLeviCivitaDefined : Prop
  leafwiseRiemannTensorComputed : Prop
  leafwiseRicciTensorContract : Prop
  leafwiseScalarCurvatureTrace : Prop
  metricSmoothTerm : metricSmooth
  leafwiseLeviCivitaDefinedTerm : leafwiseLeviCivitaDefined
  leafwiseRiemannTensorComputedTerm : leafwiseRiemannTensorComputed
  leafwiseRicciTensorContractTerm : leafwiseRicciTensorContract
  leafwiseScalarCurvatureTraceTerm : leafwiseScalarCurvatureTrace

structure LeafwiseCurvatureClosed {M : FoliatedManifold} (L : LeafwiseRiemannianMetric M) : Prop :=
  L.leafwiseRiemannTensorComputed ∧ L.leafwiseRicciTensorContract ∧ L.leafwiseScalarCurvatureTrace

theorem leafwise_curvature_closed {M : FoliatedManifold} (L : LeafwiseRiemannianMetric M) : LeafwiseCurvatureClosed L := by
  exact And.intro L.leafwiseRiemannTensorComputedTerm (And.intro L.leafwiseRicciTensorContractTerm L.leafwiseScalarCurvatureTraceTerm)

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse