import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure MultiAttributeUtilityPackage where
  attributeCount : Nat
  utilityFunction : List Float → Float
  additiveIndependence : Prop
  utilityIndependence : Prop
  preferentialIndependence : Prop
  assessedWeights : List Float

def MultiAttributeUtilityClosed (M : MultiAttributeUtilityPackage) : Prop :=
  M.additiveIndependence ∧ M.utilityIndependence ∧ M.preferentialIndependence

structure MultiAttributeUtilityEvidence (M : MultiAttributeUtilityPackage) where
  additiveIndependenceClosed : M.additiveIndependence
  utilityIndependenceClosed : M.utilityIndependence
  preferentialIndependenceClosed : M.preferentialIndependence

theorem multi_attribute_utility_closed_from_evidence (M : MultiAttributeUtilityPackage) (E : MultiAttributeUtilityEvidence M) : MultiAttributeUtilityClosed M := by
  exact And.intro E.additiveIndependenceClosed (And.intro E.utilityIndependenceClosed E.preferentialIndependenceClosed)

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse