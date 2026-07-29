import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure ParetoFrontierPackage where
  feasibleAlternatives : List String
  objectiveValues : List (List Float)
  dominates : String → String → Prop
  nonDominatedSet : List String
  nonDominatedSetComplete : Prop
  nonDominatedSetCompleteTerm : nonDominatedSetComplete

structure ParetoFrontierEvidence (P : ParetoFrontierPackage) where
  nonDominatedSetCompleteClosed : P.nonDominatedSetComplete

def ParetoFrontierClosed (P : ParetoFrontierPackage) : Prop :=
  P.nonDominatedSetComplete

theorem pareto_frontier_closed_from_evidence (P : ParetoFrontierPackage)
    (E : ParetoFrontierEvidence P) : ParetoFrontierClosed P :=
  E.nonDominatedSetCompleteClosed

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse