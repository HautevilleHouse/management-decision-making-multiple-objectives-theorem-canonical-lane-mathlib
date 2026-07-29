import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure MultipleObjectivesLayer {D : DecisionSpace} where
  objectiveFunctions : List (D.alternatives → ℝ)
  conflictResolution : Prop
  tradeoffAnalysis : Prop
  efficientFrontier : Prop

structure MultipleObjectivesEvidence {D : DecisionSpace} (L : MultipleObjectivesLayer D) where
  conflictResolutionClosed : L.conflictResolution
  tradeoffAnalysisClosed : L.tradeoffAnalysis
  efficientFrontierClosed : L.efficientFrontier

def MultipleObjectivesClosed {D : DecisionSpace} (L : MultipleObjectivesLayer D) : Prop :=
  L.conflictResolution ∧ L.tradeoffAnalysis ∧ L.efficientFrontier

theorem multiple_objectives_closed_from_evidence {D : DecisionSpace}
    (L : MultipleObjectivesLayer D) (E : MultipleObjectivesEvidence L) :
    MultipleObjectivesClosed L := by
  exact And.intro E.conflictResolutionClosed (And.intro E.tradeoffAnalysisClosed E.efficientFrontierClosed)

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse