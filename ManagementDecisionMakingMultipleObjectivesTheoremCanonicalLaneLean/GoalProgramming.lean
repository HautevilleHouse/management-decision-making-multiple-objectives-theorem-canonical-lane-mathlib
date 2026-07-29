import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure GoalProgrammingPackage where
  goals : List (String → ℝ)
  deviationsMinimized : Prop
  weights : List ℝ
  achievementFunction : ℝ

def GoalProgrammingClosed (G : GoalProgrammingPackage) : Prop :=
  G.deviationsMinimized

theorem gp_closed_iff_deviations (G : GoalProgrammingPackage) :
    GoalProgrammingClosed G ↔ G.deviationsMinimized := by
  exact Iff.rfl

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse