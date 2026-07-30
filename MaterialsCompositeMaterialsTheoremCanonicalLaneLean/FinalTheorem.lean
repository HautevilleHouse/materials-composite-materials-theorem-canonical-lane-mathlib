import MaterialsCompositeMaterialsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

def ConstrainedCompositeMaterialsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_composite_materials_endgame (A : AdmissibleClass) :
    ConstrainedCompositeMaterialsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse