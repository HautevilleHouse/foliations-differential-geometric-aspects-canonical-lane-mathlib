import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure RiemannianFoliationCurvaturePackage where
  totalManifold : Type u
  foliation : Type v
  transverseMetric : Type w
  leafwiseRiemannianMetric : Type x
  leafwiseRiemannCurvature : Type y
  leafwiseRicciCurvature : Type z
  totalScalarCurvature : Type a
  totalManifoldSmooth : Prop
  foliationSmooth : Prop
  transverseMetricSmooth : Prop
  leafwiseMetricSmooth : Prop
  leafwiseRiemannCurvatureDefined : Prop
  leafwiseRicciFromRiemann : Prop
  totalScalarCurvatureTrace : Prop

structure RiemannianFoliationCurvatureEvidence (G : RiemannianFoliationCurvaturePackage) where
  totalManifoldSmoothClosed : G.totalManifoldSmooth
  foliationSmoothClosed : G.foliationSmooth
  transverseMetricSmoothClosed : G.transverseMetricSmooth
  leafwiseMetricSmoothClosed : G.leafwiseMetricSmooth
  leafwiseRiemannCurvatureDefinedClosed : G.leafwiseRiemannCurvatureDefined
  leafwiseRicciFromRiemannClosed : G.leafwiseRicciFromRiemann
  totalScalarCurvatureTraceClosed : G.totalScalarCurvatureTrace

def RiemannianFoliationCurvatureClosed (G : RiemannianFoliationCurvaturePackage) : Prop :=
  G.totalManifoldSmooth ∧ G.foliationSmooth ∧ G.transverseMetricSmooth ∧
  G.leafwiseMetricSmooth ∧ G.leafwiseRiemannCurvatureDefined ∧
  G.leafwiseRicciFromRiemann ∧ G.totalScalarCurvatureTrace

theorem riemannian_foliation_curvature_closed_from_evidence
    (G : RiemannianFoliationCurvaturePackage) (E : RiemannianFoliationCurvatureEvidence G) :
    RiemannianFoliationCurvatureClosed G := by
  exact And.intro E.totalManifoldSmoothClosed
    (And.intro E.foliationSmoothClosed
      (And.intro E.transverseMetricSmoothClosed
        (And.intro E.leafwiseMetricSmoothClosed
          (And.intro E.leafwiseRiemannCurvatureDefinedClosed
            (And.intro E.leafwiseRicciFromRiemannClosed E.totalScalarCurvatureTraceClosed)))))

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse