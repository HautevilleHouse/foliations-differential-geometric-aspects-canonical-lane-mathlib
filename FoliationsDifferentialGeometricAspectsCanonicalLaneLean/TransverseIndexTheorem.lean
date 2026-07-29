import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure TransverseIndexPackage where
  leafwiseDeRhamComplex : Type
  leafwiseEulerCharacteristic : Prop
  transverseEulerClass : Prop
  connesSkandalisTheorem : Prop
  indexFormula : Prop

def transverseIndexClosed (P : TransverseIndexPackage) : Prop :=
  P.leafwiseEulerCharacteristic ∧ P.connesSkandalisTheorem ∧ P.indexFormula

structure TransverseIndexEvidence (P : TransverseIndexPackage) where
  leafwiseEulerClosed : P.leafwiseEulerCharacteristic
  connesSkandalisClosed : P.connesSkandalisTheorem
  indexFormulaClosed : P.indexFormula

theorem transverse_index_closed_from_evidence (P : TransverseIndexPackage) (E : TransverseIndexEvidence P) : transverseIndexClosed P :=
  And.intro E.leafwiseEulerClosed (And.intro E.connesSkandalisClosed E.indexFormulaClosed)

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse