import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  components : List String
  phases : List String
  phaseBoundaries : Prop
  eutecticPoint : Prop
  solidSolutionRegion : Prop
  phaseBoundariesTerm : phaseBoundaries
  eutecticPointTerm : eutecticPoint
  solidSolutionRegionTerm : solidSolutionRegion

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointClosed : P.eutecticPoint
  solidSolutionRegionClosed : P.solidSolutionRegion

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.eutecticPoint ∧ P.solidSolutionRegion

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed (And.intro E.eutecticPointClosed E.solidSolutionRegionClosed)

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse