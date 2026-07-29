import HautevilleHouse.FoliationsDifferentialGeometricAspectsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FoliationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse