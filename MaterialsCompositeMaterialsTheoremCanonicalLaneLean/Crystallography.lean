import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLatticeType : Type
  symmetryGroup : Type
  latticeParameters : Prop
  unitCellVolume : Prop
  spaceGroupClassification : Prop
  bravaisLatticeTypeTerm : bravaisLatticeType
  symmetryGroupTerm : symmetryGroup
  latticeParametersTerm : latticeParameters
  unitCellVolumeTerm : unitCellVolume
  spaceGroupClassificationTerm : spaceGroupClassification

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeParametersClosed : C.latticeParameters
  unitCellVolumeClosed : C.unitCellVolume
  spaceGroupClassificationClosed : C.spaceGroupClassification

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeParameters ∧ C.unitCellVolume ∧ C.spaceGroupClassification

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.latticeParametersClosed (And.intro E.unitCellVolumeClosed E.spaceGroupClassificationClosed)

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse