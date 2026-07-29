import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FoliationsDifferentialGeometricAspectsCanonicalLaneLean

structure FoliationBundleConnectionPackage where
  totalSpace : Type u
  baseManifold : Type v
  typicalFiber : Type w
  foliationStructure : Type x
  bundleProjection : Type y
  connectionForm : Type z
  curvatureForm : Type a
  holonomyRepresentation : Type b
  totalSmooth : Prop
  baseSmooth : Prop
  fiberSmooth : Prop
  foliationSmooth : Prop
  bundleProjectionSmooth : Prop
  connectionDefined : Prop
  connectionCompatible : Prop
  curvatureFromConnection : Prop
  holonomyFromConnection : Prop

structure FoliationBundleConnectionEvidence (B : FoliationBundleConnectionPackage) where
  totalSmoothClosed : B.totalSmooth
  baseSmoothClosed : B.baseSmooth
  fiberSmoothClosed : B.fiberSmooth
  foliationSmoothClosed : B.foliationSmooth
  bundleProjectionSmoothClosed : B.bundleProjectionSmooth
  connectionDefinedClosed : B.connectionDefined
  connectionCompatibleClosed : B.connectionCompatible
  curvatureFromConnectionClosed : B.curvatureFromConnection
  holonomyFromConnectionClosed : B.holonomyFromConnection

def FoliationBundleConnectionClosed (B : FoliationBundleConnectionPackage) : Prop :=
  B.totalSmooth ∧ B.baseSmooth ∧ B.fiberSmooth ∧ B.foliationSmooth ∧
  B.bundleProjectionSmooth ∧ B.connectionDefined ∧ B.connectionCompatible ∧
  B.curvatureFromConnection ∧ B.holonomyFromConnection

theorem foliation_bundle_connection_closed_from_evidence
    (B : FoliationBundleConnectionPackage) (E : FoliationBundleConnectionEvidence B) :
    FoliationBundleConnectionClosed B := by
  exact And.intro E.totalSmoothClosed
    (And.intro E.baseSmoothClosed
      (And.intro E.fiberSmoothClosed
        (And.intro E.foliationSmoothClosed
          (And.intro E.bundleProjectionSmoothClosed
            (And.intro E.connectionDefinedClosed
              (And.intro E.connectionCompatibleClosed
                (And.intro E.curvatureFromConnectionClosed E.holonomyFromConnectionClosed)))))))

end FoliationsDifferentialGeometricAspectsCanonicalLaneLean
end HautevilleHouse