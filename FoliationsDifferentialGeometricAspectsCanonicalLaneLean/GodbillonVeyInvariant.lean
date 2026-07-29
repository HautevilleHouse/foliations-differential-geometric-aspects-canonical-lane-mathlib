import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure GodbillonVeyInvariantPackage where
  codimensionOneFoliation : Prop
  secondaryCharacteristicClass : Prop
  godbillonVeyClass : Type
  rigidCohomology : Prop
  integrality : Prop

def godbillonVeyClosed (P : GodbillonVeyInvariantPackage) : Prop :=
  P.codimensionOneFoliation ∧ P.secondaryCharacteristicClass ∧ P.integrality

structure GodbillonVeyEvidence (P : GodbillonVeyInvariantPackage) where
  codimOneClosed : P.codimensionOneFoliation
  secondaryClassClosed : P.secondaryCharacteristicClass
  integralityClosed : P.integrality

theorem godbillon_vey_closed_from_evidence (P : GodbillonVeyInvariantPackage) (E : GodbillonVeyEvidence P) : godbillonVeyClosed P :=
  And.intro E.codimOneClosed (And.intro E.secondaryClassClosed E.integralityClosed)

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse