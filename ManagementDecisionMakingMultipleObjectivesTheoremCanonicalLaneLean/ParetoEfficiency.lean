import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure ParetoEfficiencyPackage where
  alternatives : Type
  objectiveFunctions : List (alternatives → Float)
  paretoFrontier : List alternatives
  nondominatedSolutions : Prop
  tradeoffInformation : Prop

def ParetoEfficiencyClosed (P : ParetoEfficiencyPackage) : Prop :=
  P.nondominatedSolutions ∧ P.tradeoffInformation

structure ParetoEfficiencyEvidence (P : ParetoEfficiencyPackage) where
  nondominatedSolutionsClosed : P.nondominatedSolutions
  tradeoffInformationClosed : P.tradeoffInformation

theorem pareto_efficiency_closed_from_evidence (P : ParetoEfficiencyPackage) (E : ParetoEfficiencyEvidence P) : ParetoEfficiencyClosed P := by
  exact And.intro E.nondominatedSolutionsClosed E.tradeoffInformationClosed

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse