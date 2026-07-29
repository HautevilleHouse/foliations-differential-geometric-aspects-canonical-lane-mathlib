import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure FoliatedManifold where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : carrier → Type v
  foliationDimension : ℕ
  leaves : Set (Set carrier)
  leafImmersedSubmanifold : Prop
  foliationSmooth : Prop
  foliationDimensionTerm : foliationDimension = 1 ∨ foliationDimension = 2 ∨ foliationDimension = 3
  leafImmersedSubmanifoldTerm : leafImmersedSubmanifold
  foliationSmoothTerm : foliationSmooth

structure FoliationAdmittedObject where
  manifold : FoliatedManifold
  bundle : Type w
  connection : Type x
  curvature : Type y
  holonomy : Type z
  bundleDefined : Prop
  connectionDefined : Prop
  curvatureComputed : Prop
  holonomyComputed : Prop
  conclusion : holonomyComputed

def FoliationWitnessClosed (O : FoliationAdmittedObject) : Prop :=
  O.holonomyComputed

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse