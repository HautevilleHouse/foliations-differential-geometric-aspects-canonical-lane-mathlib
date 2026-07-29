import canonicalLaneMathlib.AdmissibleClass
import FoliationsDifferentialGeometricAspectsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  foliationConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceRepository : String :=
  "foliations-differential-geometric-aspects-canonical-lane"

def sourceDescription : String :=
  "Foliations differential geometric aspects"

def baseCertificateLane : String :=
  "foliation_constrained"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository
  , theoremName := sourceRepository
  , theoremObject := sourceDescription
  , classicalBoundary := "classical source boundary carried by theoremBoundaryOpen"
  , foliationConstrainedStatement := "foliation-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge"
  , certificateLane := baseCertificateLane
  , carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
  }

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse
