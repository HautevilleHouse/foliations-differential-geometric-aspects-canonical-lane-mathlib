import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FoliationsDifferentialGeometricAspectsCanonicalLaneLean.FoliatedManifold

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure TransverseStructure (M : FoliatedManifold) where
  transverseManifold : Type u
  transverseTopology : TopologicalSpace transverseManifold
  holonomyPseudogroup : Type v
  transverseRiemannianMetric : Type w
  transverseHolonomyInvariant : Prop
  transverseHolonomyInvariantTerm : transverseHolonomyInvariant

structure TransverseCurvaturePackage (M : FoliatedManifold) (T : TransverseStructure M) where
  transverseRicci : Type u
  transverseScalarCurvature : Type v
  transverseRicciComputed : Prop
  transverseScalarCurvatureTrace : Prop
  transverseRicciComputedTerm : transverseRicciComputed
  transverseScalarCurvatureTraceTerm : transverseScalarCurvatureTrace

def TransverseGeometryClosed {M : FoliatedManifold} {T : TransverseStructure M} (C : TransverseCurvaturePackage M T) : Prop :=
  C.transverseRicciComputed ∧ C.transverseScalarCurvatureTrace

theorem transverse_geometry_closed {M : FoliatedManifold} {T : TransverseStructure M} (C : TransverseCurvaturePackage M T) : TransverseGeometryClosed C := by
  exact And.intro C.transverseRicciComputedTerm C.transverseScalarCurvatureTraceTerm

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse