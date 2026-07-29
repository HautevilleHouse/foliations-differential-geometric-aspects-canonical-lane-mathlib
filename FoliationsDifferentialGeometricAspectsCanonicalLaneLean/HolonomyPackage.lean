import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure HolonomyPackage (M : FoliatedManifold) where
  leafwisePaths : Type u
  holonomyGroup : M.carrier → Type v
  holonomyHomomorphism : Type w
  leafwisePathsDefined : Prop
  holonomyGroupDefined : Prop
  holonomyHomomorphismDefined : Prop
  holonomyGroupDiscrete : Prop
  leafwisePathsDefinedTerm : leafwisePathsDefined
  holonomyGroupDefinedTerm : holonomyGroupDefined
  holonomyHomomorphismDefinedTerm : holonomyHomomorphismDefined
  holonomyGroupDiscreteTerm : holonomyGroupDiscrete

structure HolonomyEvidence {M : FoliatedManifold} (H : HolonomyPackage M) where
  holonomyGroupDiscreteClosed : H.holonomyGroupDiscrete
  holonomyHomomorphismDefinedClosed : H.holonomyHomomorphismDefined

def HolonomyClosed {M : FoliatedManifold} (H : HolonomyPackage M) : Prop :=
  H.holonomyGroupDiscrete ∧ H.holonomyHomomorphismDefined

theorem holonomy_closed_from_evidence {M : FoliatedManifold} (H : HolonomyPackage M) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.holonomyGroupDiscreteClosed E.holonomyHomomorphismDefinedClosed

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse