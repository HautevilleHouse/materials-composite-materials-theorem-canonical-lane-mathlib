import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure CompositeMaterialObject where
  matrixPhase : Type
  reinforcementPhase : Type
  interfaceRegion : Type
  volumeFraction : ℝ
  matrixElasticModulus : ℝ
  reinforcementElasticModulus : ℝ
  effectiveModulus : ℝ
  compatibilityCondition : Prop
  compatibilityTerm : compatibilityCondition

def CompositeWitnessClosed (O : CompositeMaterialObject) : Prop :=
  O.compatibilityCondition

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse