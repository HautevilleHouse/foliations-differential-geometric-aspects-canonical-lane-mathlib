import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure FoliatedManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  dimension : Nat
  foliation : Type
  leafDimension : Nat
  transverseDimension : Nat
  foliationSmooth : Prop
  leavesImmersed : Prop
  holonomyGroupoid : Prop

def FoliationAdmittedObject (M : FoliatedManifold) : Prop :=
  M.smoothStructure ∧ M.foliationSmooth ∧ M.leavesImmersed ∧ M.holonomyGroupoid

structure FoliationsAdmissibleClass extends AdmissibleClass where
  foliatedSpace : FoliatedManifold
  admitted : FoliationAdmittedObject foliatedSpace

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse