import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure InterfaceThermodynamicsPackage where
  interfaceEnergy : Prop
  adhesionWork : Prop
  wettingAngle : Prop
  interfacialReaction : Prop
  interfaceEnergyTerm : interfaceEnergy
  adhesionWorkTerm : adhesionWork
  wettingAngleTerm : wettingAngle
  interfacialReactionTerm : interfacialReaction

structure InterfaceThermodynamicsEvidence (I : InterfaceThermodynamicsPackage) where
  interfaceEnergyClosed : I.interfaceEnergy
  adhesionWorkClosed : I.adhesionWork
  wettingAngleClosed : I.wettingAngle
  interfacialReactionClosed : I.interfacialReaction

def InterfaceThermodynamicsClosed (I : InterfaceThermodynamicsPackage) : Prop :=
  I.interfaceEnergy ∧ I.adhesionWork ∧ I.wettingAngle ∧ I.interfacialReaction

theorem interface_thermodynamics_closed_from_evidence (I : InterfaceThermodynamicsPackage) (E : InterfaceThermodynamicsEvidence I) : InterfaceThermodynamicsClosed I := by
  exact And.intro E.interfaceEnergyClosed (And.intro E.adhesionWorkClosed (And.intro E.wettingAngleClosed E.interfacialReactionClosed))

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse