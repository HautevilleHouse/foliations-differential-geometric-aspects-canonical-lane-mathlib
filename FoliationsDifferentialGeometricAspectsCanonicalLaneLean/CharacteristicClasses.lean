import FoliationsDifferentialGeometricAspectsCanonicalLaneLean.IndexTheoremForFoliations

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure CharacteristicClassesPackage where
  godbillonVeyClass : Prop
  exoticClassExistence : Prop
  rigidityUnderHolonomy : Prop
  nonTrivialExample : Prop
  leafwiseCharacteristic : Prop

structure CharacteristicClassesEvidence (C : CharacteristicClassesPackage) where
  godbillonVeyClassClosed : C.godbillonVeyClass
  exoticClassExistenceClosed : C.exoticClassExistence
  rigidityUnderHolonomyClosed : C.rigidityUnderHolonomy
  nonTrivialExampleClosed : C.nonTrivialExample
  leafwiseCharacteristicClosed : C.leafwiseCharacteristic

def CharacteristicClassesClosed (C : CharacteristicClassesPackage) : Prop :=
  C.godbillonVeyClass ∧ C.exoticClassExistence ∧ C.rigidityUnderHolonomy ∧ C.nonTrivialExample ∧ C.leafwiseCharacteristic

theorem characteristic_classes_closed_from_evidence (C : CharacteristicClassesPackage) (E : CharacteristicClassesEvidence C) : CharacteristicClassesClosed C :=
  And.intro E.godbillonVeyClassClosed
    (And.intro E.exoticClassExistenceClosed
      (And.intro E.rigidityUnderHolonomyClosed
        (And.intro E.nonTrivialExampleClosed E.leafwiseCharacteristicClosed)))

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse