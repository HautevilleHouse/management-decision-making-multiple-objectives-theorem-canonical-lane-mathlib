import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure MultipleObjectiveDecisionPackage where
  alternatives : Type
  criteria : Type
  initialWeights : Prop
  tradeoffConstraints : Prop
  paretoFrontComputed : Prop
  decisionRule : Prop

structure MultipleObjectiveDecisionEvidence (M : MultipleObjectiveDecisionPackage) where
  initialWeightsClosed : M.initialWeights
  tradeoffConstraintsClosed : M.tradeoffConstraints
  paretoFrontComputedClosed : M.paretoFrontComputed
  decisionRuleClosed : M.decisionRule

def MultipleObjectiveDecisionClosed (M : MultipleObjectiveDecisionPackage) : Prop :=
  M.initialWeights ∧ M.tradeoffConstraints ∧ M.paretoFrontComputed ∧ M.decisionRule

theorem multiple_objective_decision_closed_from_evidence (M : MultipleObjectiveDecisionPackage)
    (E : MultipleObjectiveDecisionEvidence M) : MultipleObjectiveDecisionClosed M :=
  And.intro E.initialWeightsClosed (And.intro E.tradeoffConstraintsClosed
    (And.intro E.paretoFrontComputedClosed E.decisionRuleClosed))

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse