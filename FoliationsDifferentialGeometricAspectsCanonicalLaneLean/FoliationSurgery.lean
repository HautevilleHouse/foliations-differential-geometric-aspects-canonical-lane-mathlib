import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure FoliationSurgeryPackage where
  foliatedManifold : Type u
  surgeryRegion : Type v
  foliationBeforeSurgery : Type w
  foliationAfterSurgery : Type x
  topologicalChange : Type y
  foliationSmoothBefore : Prop
  surgeryRegionCompact : Prop
  surgeryPerformed : Prop
  foliationSmoothAfter : Prop
  surgeryFoliationCompatible : Prop
  holonomyChangeControlled : Prop
  characteristicClassChange : Prop

structure FoliationSurgeryEvidence (S : FoliationSurgeryPackage) where
  foliationSmoothBeforeClosed : S.foliationSmoothBefore
  surgeryRegionCompactClosed : S.surgeryRegionCompact
  surgeryPerformedClosed : S.surgeryPerformed
  foliationSmoothAfterClosed : S.foliationSmoothAfter
  surgeryFoliationCompatibleClosed : S.surgeryFoliationCompatible
  holonomyChangeControlledClosed : S.holonomyChangeControlled
  characteristicClassChangeClosed : S.characteristicClassChange

def FoliationSurgeryClosed (S : FoliationSurgeryPackage) : Prop :=
  S.foliationSmoothBefore ∧ S.surgeryRegionCompact ∧ S.surgeryPerformed ∧
  S.foliationSmoothAfter ∧ S.surgeryFoliationCompatible ∧
  S.holonomyChangeControlled ∧ S.characteristicClassChange

theorem foliation_surgery_closed_from_evidence
    (S : FoliationSurgeryPackage) (E : FoliationSurgeryEvidence S) :
    FoliationSurgeryClosed S := by
  exact And.intro E.foliationSmoothBeforeClosed
    (And.intro E.surgeryRegionCompactClosed
      (And.intro E.surgeryPerformedClosed
        (And.intro E.foliationSmoothAfterClosed
          (And.intro E.surgeryFoliationCompatibleClosed
            (And.intro E.holonomyChangeControlledClosed E.characteristicClassChangeClosed)))))

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse