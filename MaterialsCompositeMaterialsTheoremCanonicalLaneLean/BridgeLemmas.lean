import MaterialsCompositeMaterialsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CompositeWitnessClosed (A.object)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.compatibilityTerm

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse