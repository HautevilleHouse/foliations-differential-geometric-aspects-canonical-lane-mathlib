import HautevilleHouse.FoliationsDifferentialGeometricAspectsCanonicalLaneLean.FoliatedManifold

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure AdmissibleClass where
  object : FoliationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FoliationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse