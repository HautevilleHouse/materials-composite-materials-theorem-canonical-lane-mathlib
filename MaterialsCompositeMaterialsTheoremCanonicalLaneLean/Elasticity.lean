import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type
  strainTensor : Type
  constitutiveLaw : Prop
  equilibriumEquation : Prop
  strainEnergyDensity : Prop
  constitutiveLawTerm : constitutiveLaw
  equilibriumEquationTerm : equilibriumEquation
  strainEnergyDensityTerm : strainEnergyDensity

structure ElasticityEvidence (E : ElasticityPackage) where
  constitutiveLawClosed : E.constitutiveLaw
  equilibriumEquationClosed : E.equilibriumEquation
  strainEnergyDensityClosed : E.strainEnergyDensity

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.constitutiveLaw ∧ E.equilibriumEquation ∧ E.strainEnergyDensity

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.constitutiveLawClosed (And.intro Ev.equilibriumEquationClosed Ev.strainEnergyDensityClosed)

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse