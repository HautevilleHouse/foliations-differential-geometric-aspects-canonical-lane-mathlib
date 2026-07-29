import FoliationsDifferentialGeometricAspectsCanonicalLaneLean.FoliationBundleObjects

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure FoliationsConnectionPackage where
  leafwiseConnection : Prop
  transverseConnection : Prop
  curvatureTwoForm : Prop
  bottVanishing : Prop
  leafwiseFlat : Prop
  transverseStructure : Prop

structure FoliationsConnectionEvidence (C : FoliationsConnectionPackage) where
  leafwiseConnectionClosed : C.leafwiseConnection
  transverseConnectionClosed : C.transverseConnection
  curvatureTwoFormClosed : C.curvatureTwoForm
  bottVanishingClosed : C.bottVanishing
  leafwiseFlatClosed : C.leafwiseFlat
  transverseStructureClosed : C.transverseStructure

def FoliationsConnectionClosed (C : FoliationsConnectionPackage) : Prop :=
  C.leafwiseConnection ∧ C.transverseConnection ∧ C.curvatureTwoForm ∧ C.bottVanishing ∧ C.leafwiseFlat ∧ C.transverseStructure

theorem foliations_connection_closed_from_evidence (C : FoliationsConnectionPackage) (E : FoliationsConnectionEvidence C) : FoliationsConnectionClosed C :=
  And.intro E.leafwiseConnectionClosed
    (And.intro E.transverseConnectionClosed
      (And.intro E.curvatureTwoFormClosed
        (And.intro E.bottVanishingClosed
          (And.intro E.leafwiseFlatClosed E.transverseStructureClosed))))

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse