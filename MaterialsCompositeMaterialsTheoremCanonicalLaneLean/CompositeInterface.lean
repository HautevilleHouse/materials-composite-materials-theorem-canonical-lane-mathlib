import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure CompositeInterfacePackage where
  interfacePhase : Type u
  bondingModel : Type v
  adhesionEnergy : Prop
  interfacialStressTransfer : Prop
  debondingCriterion : Prop

structure CompositeInterfaceEvidence (C : CompositeInterfacePackage) where
  adhesionEnergyClosed : C.adhesionEnergy
  interfacialStressTransferClosed : C.interfacialStressTransfer
  debondingCriterionClosed : C.debondingCriterion

def CompositeInterfaceClosed (C : CompositeInterfacePackage) : Prop :=
  C.adhesionEnergy ∧ C.interfacialStressTransfer ∧ C.debondingCriterion

theorem composite_interface_closed_from_evidence (C : CompositeInterfacePackage) (E : CompositeInterfaceEvidence C) :
    CompositeInterfaceClosed C := by
  exact And.intro E.adhesionEnergyClosed (And.intro E.interfacialStressTransferClosed E.debondingCriterionClosed)

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse