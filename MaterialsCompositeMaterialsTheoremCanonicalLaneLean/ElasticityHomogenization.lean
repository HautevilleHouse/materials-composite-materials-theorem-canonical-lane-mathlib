import MaterialsCompositeMaterialsTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure ElasticityHomogenizationPackage {G : CompliancePackage} (V : VolumeFractionPackage G) where
  representativeVolumeElement : Type
  localStressStrain : Prop
  homogenizedConstitutiveLaw : Prop
  effectivePropertyComputed : Prop
  boundsOnEffectiveModuli : Prop

structure ElasticityHomogenizationEvidence {G : CompliancePackage} {V : VolumeFractionPackage G}
    (E : ElasticityHomogenizationPackage V) where
  representativeVolumeElementClosed : E.representativeVolumeElement
  localStressStrainClosed : E.localStressStrain
  homogenizedConstitutiveLawClosed : E.homogenizedConstitutiveLaw
  effectivePropertyComputedClosed : E.effectivePropertyComputed
  boundsOnEffectiveModuliClosed : E.boundsOnEffectiveModuli

def ElasticityHomogenizationClosed {G : CompliancePackage} {V : VolumeFractionPackage G}
    (E : ElasticityHomogenizationPackage V) : Prop :=
  E.representativeVolumeElement ∧ E.localStressStrain ∧ E.homogenizedConstitutiveLaw ∧
  E.effectivePropertyComputed ∧ E.boundsOnEffectiveModuli

theorem elasticity_homogenization_closed_from_evidence {G : CompliancePackage} {V : VolumeFractionPackage G}
    (E : ElasticityHomogenizationPackage V) (Ev : ElasticityHomogenizationEvidence E) :
    ElasticityHomogenizationClosed E := by
  exact And.intro Ev.representativeVolumeElementClosed
    (And.intro Ev.localStressStrainClosed
      (And.intro Ev.homogenizedConstitutiveLawClosed
        (And.intro Ev.effectivePropertyComputedClosed Ev.boundsOnEffectiveModuliClosed)))

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse