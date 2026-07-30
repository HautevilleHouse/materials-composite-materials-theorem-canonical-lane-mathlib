import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure CrystallographicStructure where
  lattice : Type u
  basisVectors : lattice → Vector ℝ 3
  bravaisLatticeType : Prop
  symmetryGroup : Prop
  diffractionPattern : Prop

structure CrystallographicEvidence (C : CrystallographicStructure) where
  latticeClosed : C.bravaisLatticeType
  symmetryClosed : C.symmetryGroup
  diffractionClosed : C.diffractionPattern

def CrystallographicClosed (C : CrystallographicStructure) : Prop :=
  C.bravaisLatticeType ∧ C.symmetryGroup ∧ C.diffractionPattern

theorem crystallographic_closed_from_evidence (C : CrystallographicStructure)
    (E : CrystallographicEvidence C) : CrystallographicClosed C := by
  exact And.intro E.latticeClosed (And.intro E.symmetryClosed E.diffractionClosed)

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse