import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure ElasticityPackage where
  stiffnessTensor : Type u
  complianceTensor : Type v
  hookesLaw : Prop
  isotropicElasticity : Prop
  anisotropicCorrections : Prop
  youngModulus : Prop
  poissonRatio : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  isotropicElasticityClosed : E.isotropicElasticity
  anisotropicCorrectionsClosed : E.anisotropicCorrections
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.isotropicElasticity ∧ E.anisotropicCorrections ∧ E.youngModulus ∧ E.poissonRatio

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed (And.intro Ev.isotropicElasticityClosed (And.intro Ev.anisotropicCorrectionsClosed (And.intro Ev.youngModulusClosed Ev.poissonRatioClosed)))

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse