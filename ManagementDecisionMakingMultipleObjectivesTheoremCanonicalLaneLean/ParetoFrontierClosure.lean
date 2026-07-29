import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure ParetoFrontierEvidence where
  nondominatedPointsExist : Prop
  weakParetoFrontierClosed : Prop
  strongParetoFrontierClosed : Prop
  supportingHyperplaneExists : Prop

def ParetoFrontierClosed (E : ParetoFrontierEvidence) : Prop :=
  E.nondominatedPointsExist ∧ E.weakParetoFrontierClosed ∧
  E.strongParetoFrontierClosed ∧ E.supportingHyperplaneExists

theorem pareto_frontier_closed_from_evidence (E : ParetoFrontierEvidence) :
    ParetoFrontierClosed E := by
  exact And.intro E.nondominatedPointsExist
    (And.intro E.weakParetoFrontierClosed
      (And.intro E.strongParetoFrontierClosed
        E.supportingHyperplaneExists))

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse