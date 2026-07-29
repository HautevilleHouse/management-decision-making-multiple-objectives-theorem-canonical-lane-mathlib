import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheorem

structure AnalyticHierarchyProcessModel where
  criteria : List String
  alternatives : List String
  pairwiseComparisons : (String → String → ℝ)
  consistencyRatio : ℝ
  priorityVector : (String → ℝ)
  overallScore : (String → ℝ)

structure AnalyticHierarchyProcessEvidence (A : AnalyticHierarchyProcessModel) where
  criteriaNonEmpty : A.criteria ≠ []
  alternativesNonEmpty : A.alternatives ≠ []
  pairwiseComplete : ∀ c1 ∈ A.criteria, ∀ c2 ∈ A.criteria, A.pairwiseComparisons c1 c2 > 0
  consistencyClosed : A.consistencyRatio < 0.1
  priorityVectorDefined : ∀ c ∈ A.criteria, A.priorityVector c ≥ 0
  overallScoreDefined : ∀ a ∈ A.alternatives, A.overallScore a ≥ 0

def AnalyticHierarchyProcessClosed (A : AnalyticHierarchyProcessModel) : Prop :=
  A.criteria ≠ [] ∧ A.alternatives ≠ [] ∧ A.consistencyRatio < 0.1

theorem ahp_closed_from_evidence (A : AnalyticHierarchyProcessModel) (E : AnalyticHierarchyProcessEvidence A) :
    AnalyticHierarchyProcessClosed A := by
  exact And.intro E.criteriaNonEmpty (And.intro E.alternativesNonEmpty E.consistencyClosed)

end ManagementDecisionMakingMultipleObjectivesTheorem
end HautevilleHouse
