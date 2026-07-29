import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure GodbillonVeyClassPackage where
  foliatedManifold : Type u
  codimension : Nat
  transverseSmoothStructure : Type v
  leafwiseForms : Type w
  godbillonVeyForm : Type x
  godbillonVeyCohomologyClass : Type y
  foliationCodimensionDefined : Prop
  transverseStructureDefined : Prop
  leafwiseFormsDefined : Prop
  godbillonVeyFormDefined : Prop
  godbillonVeyFormClosed : Prop
  cohomologyClassRepresented : Prop
  secondaryCharacteristicClass : Prop

structure GodbillonVeyClassEvidence (G : GodbillonVeyClassPackage) where
  foliationCodimensionDefinedClosed : G.foliationCodimensionDefined
  transverseStructureDefinedClosed : G.transverseStructureDefined
  leafwiseFormsDefinedClosed : G.leafwiseFormsDefined
  godbillonVeyFormDefinedClosed : G.godbillonVeyFormDefined
  godbillonVeyFormClosedClosed : G.godbillonVeyFormClosed
  cohomologyClassRepresentedClosed : G.cohomologyClassRepresented
  secondaryCharacteristicClassClosed : G.secondaryCharacteristicClass

def GodbillonVeyClassClosed (G : GodbillonVeyClassPackage) : Prop :=
  G.foliationCodimensionDefined ∧ G.transverseStructureDefined ∧
  G.leafwiseFormsDefined ∧ G.godbillonVeyFormDefined ∧ G.godbillonVeyFormClosed ∧
  G.cohomologyClassRepresented ∧ G.secondaryCharacteristicClass

theorem godbillon_vey_class_closed_from_evidence
    (G : GodbillonVeyClassPackage) (E : GodbillonVeyClassEvidence G) :
    GodbillonVeyClassClosed G := by
  exact And.intro E.foliationCodimensionDefinedClosed
    (And.intro E.transverseStructureDefinedClosed
      (And.intro E.leafwiseFormsDefinedClosed
        (And.intro E.godbillonVeyFormDefinedClosed
          (And.intro E.godbillonVeyFormClosedClosed
            (And.intro E.cohomologyClassRepresentedClosed E.secondaryCharacteristicClassClosed)))))

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse