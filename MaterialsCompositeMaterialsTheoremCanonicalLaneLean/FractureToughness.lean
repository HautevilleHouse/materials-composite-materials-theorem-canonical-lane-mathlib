import MaterialsCompositeMaterialsTheoremCanonicalLaneLean.Compliance

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure FractureToughnessPackage {G : CompliancePackage} {H : ElasticityHomogenizationPackage G}
    (I : InterfacePackage H) where
  crackBridging : Prop
  processZoneSize : Prop
  criticalStressIntensity : Prop
  tougheningMechanismIdentified : Prop

structure FractureToughnessEvidence {G : CompliancePackage} {H : ElasticityHomogenizationPackage G}
    {I : InterfacePackage H} (F : FractureToughnessPackage I) where
  crackBridgingClosed : F.crackBridging
  processZoneSizeClosed : F.processZoneSize
  criticalStressIntensityClosed : F.criticalStressIntensity
  tougheningMechanismIdentifiedClosed : F.tougheningMechanismIdentified

def FractureToughnessClosed {G : CompliancePackage} {H : ElasticityHomogenizationPackage G}
    {I : InterfacePackage H} (F : FractureToughnessPackage I) : Prop :=
  F.crackBridging ∧ F.processZoneSize ∧ F.criticalStressIntensity ∧ F.tougheningMechanismIdentified

theorem fracture_toughness_closed_from_evidence {G : CompliancePackage} {H : ElasticityHomogenizationPackage G}
    {I : InterfacePackage H} (F : FractureToughnessPackage I) (Ev : FractureToughnessEvidence F) :
    FractureToughnessClosed F := by
  exact And.intro Ev.crackBridgingClosed
    (And.intro Ev.processZoneSizeClosed
      (And.intro Ev.criticalStressIntensityClosed Ev.tougheningMechanismIdentifiedClosed))

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse