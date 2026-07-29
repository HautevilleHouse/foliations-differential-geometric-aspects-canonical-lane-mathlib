import canonicalLaneMathlib.AdmissibleClass
import HolonomyPackage
import LeafwiseCurvaturePackage
import ConnectionsAndParallelism
import IndexTheoremPackage

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

def ConstrainedFoliationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_foliation_endgame (A : AdmissibleClass) :
    ConstrainedFoliationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse
