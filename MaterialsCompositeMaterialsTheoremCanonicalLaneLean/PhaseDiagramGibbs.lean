import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  componentSpecies : Type u
  phases : List (String × Prop)
  gibbsFreeEnergy : Prop
  phaseBoundaries : Prop
  eutecticPoint : Prop
  phaseRuleSatisfied : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  phaseBoundariesClosed : P.phaseBoundaries
  eutecticPointClosed : P.eutecticPoint
  phaseRuleSatisfiedClosed : P.phaseRuleSatisfied

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.gibbsFreeEnergy ∧ P.phaseBoundaries ∧ P.eutecticPoint ∧ P.phaseRuleSatisfied

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.phaseBoundariesClosed
      (And.intro E.eutecticPointClosed E.phaseRuleSatisfiedClosed))

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse