import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheorem

structure CompromiseProgrammingPackage where
  distanceMetric : ℝ → ℝ → ℝ
  groupUtility : ℝ → ℝ
  utopiaPoint : ℝ
  feasibleSet : Set ℝ
  compromiseSolution : ℝ
  lpMetric : ℝ → ℝ → ℝ

structure CompromiseProgrammingEvidence (C : CompromiseProgrammingPackage) where
  distanceDefined : True
  groupUtilityDefined : True
  utopiaPointReached : C.utopiaPoint ∈ C.feasibleSet
  compromiseSolutionClosed : C.compromiseSolution ∈ C.feasibleSet

def CompromiseProgrammingClosed (C : CompromiseProgrammingPackage) : Prop :=
  C.utopiaPoint ∈ C.feasibleSet ∧ C.compromiseSolution ∈ C.feasibleSet

theorem compromise_programming_closed_from_evidence (C : CompromiseProgrammingPackage) (E : CompromiseProgrammingEvidence C) :
    CompromiseProgrammingClosed C := by
  exact And.intro E.utopiaPointReached E.compromiseSolutionClosed

end ManagementDecisionMakingMultipleObjectivesTheorem
end HautevilleHouse
