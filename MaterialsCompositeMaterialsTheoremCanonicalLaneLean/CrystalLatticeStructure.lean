import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure CrystalLatticePackage where
  unitCell : Type u
  bravaisLattice : Type v
  latticeParameters : Prop
  reciprocalVectors : Prop
  symmetryGroup : Prop

structure CrystalLatticeEvidence (C : CrystalLatticePackage) where
  latticeParametersClosed : C.latticeParameters
  reciprocalVectorsClosed : C.reciprocalVectors
  symmetryGroupClosed : C.symmetryGroup

def CrystalLatticeClosed (C : CrystalLatticePackage) : Prop :=
  C.latticeParameters ∧ C.reciprocalVectors ∧ C.symmetryGroup

theorem crystal_lattice_closed_from_evidence (C : CrystalLatticePackage) (E : CrystalLatticeEvidence C) :
    CrystalLatticeClosed C := by
  exact And.intro E.latticeParametersClosed (And.intro E.reciprocalVectorsClosed E.symmetryGroupClosed)

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse