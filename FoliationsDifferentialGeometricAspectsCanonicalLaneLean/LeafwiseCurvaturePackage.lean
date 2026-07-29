import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure LeafwiseCurvaturePackage where
  foliationBundle : Type u
  leafwiseRiemannCurvature : Type v
  leafwiseRicciCurvature : Type w
  leafwiseScalarCurvature : Type x
  curvatureInvariantsDefined : Prop
  curvatureInvariantsDefinedClosed : curvatureInvariantsDefined

structure LeafwiseCurvatureEvidence (L : LeafwiseCurvaturePackage) where
  curvatureInvariantsDefinedClosed : L.curvatureInvariantsDefined

def LeafwiseCurvatureClosed (L : LeafwiseCurvaturePackage) : Prop :=
  L.curvatureInvariantsDefined

theorem leafwise_curvature_closed_from_evidence (L : LeafwiseCurvaturePackage) (E : LeafwiseCurvatureEvidence L) :
    LeafwiseCurvatureClosed L := by
  exact E.curvatureInvariantsDefinedClosed

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse
