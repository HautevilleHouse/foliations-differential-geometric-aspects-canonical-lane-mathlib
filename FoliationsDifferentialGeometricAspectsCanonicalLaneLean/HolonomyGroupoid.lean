import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure HolonomyGroupoidPackage where
  foliatedManifold : Type u
  leaf : Type v
  holonomyGroup : Type w
  holonomyRepresentation : Type x
  holonomyHomomorphism : Type y
  leafSmooth : Prop
  holonomyGroupDefined : Prop
  representationDefined : Prop
  homomorphismDefined : Prop
  holonomyInvariant : Prop
  holonomyExactSequence : Prop

structure HolonomyGroupoidEvidence (H : HolonomyGroupoidPackage) where
  leafSmoothClosed : H.leafSmooth
  holonomyGroupDefinedClosed : H.holonomyGroupDefined
  representationDefinedClosed : H.representationDefined
  homomorphismDefinedClosed : H.homomorphismDefined
  holonomyInvariantClosed : H.holonomyInvariant
  holonomyExactSequenceClosed : H.holonomyExactSequence

def HolonomyGroupoidClosed (H : HolonomyGroupoidPackage) : Prop :=
  H.leafSmooth ∧ H.holonomyGroupDefined ∧ H.representationDefined ∧
  H.homomorphismDefined ∧ H.holonomyInvariant ∧ H.holonomyExactSequence

theorem holonomy_groupoid_closed_from_evidence
    (H : HolonomyGroupoidPackage) (E : HolonomyGroupoidEvidence H) :
    HolonomyGroupoidClosed H := by
  exact And.intro E.leafSmoothClosed
    (And.intro E.holonomyGroupDefinedClosed
      (And.intro E.representationDefinedClosed
        (And.intro E.homomorphismDefinedClosed
          (And.intro E.holonomyInvariantClosed E.holonomyExactSequenceClosed))))

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse