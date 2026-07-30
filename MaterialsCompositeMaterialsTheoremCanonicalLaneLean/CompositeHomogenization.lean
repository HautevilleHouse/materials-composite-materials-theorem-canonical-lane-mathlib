import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCompositeMaterialsTheoremCanonicalLaneLean

structure CompositeHomogenizationPackage where
  inclusionShape : Type
  matrixProperties : Prop
  effectiveModulus : Prop
  fieldConcentrationTensor : Prop
  homogenizationScheme : Prop
  matrixPropertiesTerm : matrixProperties
  effectiveModulusTerm : effectiveModulus
  fieldConcentrationTensorTerm : fieldConcentrationTensor
  homogenizationSchemeTerm : homogenizationScheme

structure CompositeHomogenizationEvidence (C : CompositeHomogenizationPackage) where
  matrixPropertiesClosed : C.matrixProperties
  effectiveModulusClosed : C.effectiveModulus
  fieldConcentrationTensorClosed : C.fieldConcentrationTensor
  homogenizationSchemeClosed : C.homogenizationScheme

def CompositeHomogenizationClosed (C : CompositeHomogenizationPackage) : Prop :=
  C.matrixProperties ∧ C.effectiveModulus ∧ C.fieldConcentrationTensor ∧ C.homogenizationScheme

theorem composite_homogenization_closed_from_evidence (C : CompositeHomogenizationPackage) (E : CompositeHomogenizationEvidence C) : CompositeHomogenizationClosed C := by
  exact And.intro E.matrixPropertiesClosed (And.intro E.effectiveModulusClosed (And.intro E.fieldConcentrationTensorClosed E.homogenizationSchemeClosed))

end MaterialsCompositeMaterialsTheoremCanonicalLaneLean
end HautevilleHouse