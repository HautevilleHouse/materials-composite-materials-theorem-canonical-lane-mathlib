import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure PhaseEquilibriumPackage where
  components : List String
  temperatureRange : Prop
  pressureRange : Prop
  phaseBoundaries : Prop
  gibbsFreeEnergyMinimization : Prop

structure PhaseEquilibriumEvidence (P : PhaseEquilibriumPackage) where
  temperatureRangeClosed : P.temperatureRange
  pressureRangeClosed : P.pressureRange
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsFreeEnergyMinimizationClosed : P.gibbsFreeEnergyMinimization

def PhaseEquilibriumClosed (P : PhaseEquilibriumPackage) : Prop :=
  P.temperatureRange ∧ P.pressureRange ∧ P.phaseBoundaries ∧ P.gibbsFreeEnergyMinimization

theorem phase_equilibrium_closed_from_evidence (P : PhaseEquilibriumPackage) (E : PhaseEquilibriumEvidence P) :
    PhaseEquilibriumClosed P := by
  exact And.intro E.temperatureRangeClosed (And.intro E.pressureRangeClosed (And.intro E.phaseBoundariesClosed E.gibbsFreeEnergyMinimizationClosed))

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse