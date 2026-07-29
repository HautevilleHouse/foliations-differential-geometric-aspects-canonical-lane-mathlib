import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure ConnectionsAndParallelismPackage where
  leafwiseConnection : Type u
  parallelTransport : Type v
  connectionFlatness : Prop
  holonomyInvariance : Prop
  connectionFlatnessClosed : connectionFlatness
  holonomyInvarianceClosed : holonomyInvariance

structure ConnectionsAndParallelismEvidence (C : ConnectionsAndParallelismPackage) where
  connectionFlatnessClosed : C.connectionFlatness
  holonomyInvarianceClosed : C.holonomyInvariance

def ConnectionsAndParallelismClosed (C : ConnectionsAndParallelismPackage) : Prop :=
  C.connectionFlatness ∧ C.holonomyInvariance

theorem connections_and_parallelism_closed_from_evidence (C : ConnectionsAndParallelismPackage) (E : ConnectionsAndParallelismEvidence C) :
    ConnectionsAndParallelismClosed C := by
  exact And.intro E.connectionFlatnessClosed E.holonomyInvarianceClosed

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse
