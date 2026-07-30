import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure CrystallographySymmetryPackage where
  bravaisLattice : Type u
  pointGroup : Type v
  spaceGroup : Type w
  latticeParameters : Prop
  symmetryOperations : Prop
  spaceGroupClassification : Prop

structure CrystallographySymmetryEvidence (C : CrystallographySymmetryPackage) where
  latticeParametersClosed : C.latticeParameters
  symmetryOperationsClosed : C.symmetryOperations
  spaceGroupClassificationClosed : C.spaceGroupClassification

def CrystallographySymmetryClosed (C : CrystallographySymmetryPackage) : Prop :=
  C.latticeParameters ∧ C.symmetryOperations ∧ C.spaceGroupClassification

theorem crystallography_symmetry_closed_from_evidence (C : CrystallographySymmetryPackage)
    (E : CrystallographySymmetryEvidence C) : CrystallographySymmetryClosed C := by
  exact And.intro E.latticeParametersClosed
    (And.intro E.symmetryOperationsClosed E.spaceGroupClassificationClosed)

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse