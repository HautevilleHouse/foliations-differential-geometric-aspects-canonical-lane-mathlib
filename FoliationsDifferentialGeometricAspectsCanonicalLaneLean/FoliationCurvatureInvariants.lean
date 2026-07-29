import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure FoliationCurvatureInvariantsPackage where
  leafRiemannCurvature : Type u
  meanCurvatureForm : Type v
  curvatureCompatibility : Prop
  leafSectionalCurvature : Type w

structure FoliationCurvatureInvariantsEvidence
    (Cpkg : FoliationCurvatureInvariantsPackage) where
  curvatureCompatibilityClosed : Cpkg.curvatureCompatibility

def FoliationCurvatureInvariantsClosed
    (Cpkg : FoliationCurvatureInvariantsPackage) : Prop :=
  Cpkg.curvatureCompatibility

theorem foliation_curvature_invariants_closed_from_evidence
    (Cpkg : FoliationCurvatureInvariantsPackage)
    (E : FoliationCurvatureInvariantsEvidence Cpkg) :
    FoliationCurvatureInvariantsClosed Cpkg := by
  exact E.curvatureCompatibilityClosed

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse