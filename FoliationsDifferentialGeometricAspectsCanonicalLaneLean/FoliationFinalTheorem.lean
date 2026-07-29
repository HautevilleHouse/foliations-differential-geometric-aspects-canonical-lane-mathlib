import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

def ConstrainedFoliationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_foliation_endgame (A : AdmissibleClass) :
    ConstrainedFoliationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse