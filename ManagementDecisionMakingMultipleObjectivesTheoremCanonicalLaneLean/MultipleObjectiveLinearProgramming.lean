import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure MultipleObjectiveLinearProgrammingPackage where
  objectiveFunctions : List (List ℝ → ℝ)
  constraintMatrix : List (List ℝ)
  constraintBounds : List ℝ
  paretoOptimalSolutions : Prop

def MultipleObjectiveLinearProgrammingClosed (P : MultipleObjectiveLinearProgrammingPackage) : Prop :=
  P.paretoOptimalSolutions

theorem molp_closed_iff_pareto (P : MultipleObjectiveLinearProgrammingPackage) :
    MultipleObjectiveLinearProgrammingClosed P ↔ P.paretoOptimalSolutions := by
  exact Iff.rfl

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse