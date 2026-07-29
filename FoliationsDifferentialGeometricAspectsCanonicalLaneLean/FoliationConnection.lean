import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure FoliationConnectionPackage where
  foliatedManifold : Type u
  foliationAtlas : Type v
  leafSmoothness : Prop
  holonomyInvariantConnection : Prop
  leafParallelTransport : Prop

structure FoliationConnectionEvidence (Fpkg : FoliationConnectionPackage) where
  leafSmoothnessClosed : Fpkg.leafSmoothness
  holonomyInvariantConnectionClosed : Fpkg.holonomyInvariantConnection
  leafParallelTransportClosed : Fpkg.leafParallelTransport

def FoliationConnectionClosed (Fpkg : FoliationConnectionPackage) : Prop :=
  Fpkg.leafSmoothness ∧ Fpkg.holonomyInvariantConnection ∧ Fpkg.leafParallelTransport

theorem foliation_connection_closed_from_evidence (Fpkg : FoliationConnectionPackage)
    (E : FoliationConnectionEvidence Fpkg) : FoliationConnectionClosed Fpkg := by
  exact And.intro E.leafSmoothnessClosed
    (And.intro E.holonomyInvariantConnectionClosed E.leafParallelTransportClosed)

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse