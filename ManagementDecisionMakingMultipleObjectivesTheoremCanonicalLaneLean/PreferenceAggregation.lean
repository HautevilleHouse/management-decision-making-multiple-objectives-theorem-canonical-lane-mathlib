import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure PreferenceAggregationPackage {D : DecisionSpace} where
  individualPreferences : D.alternatives → D.alternatives → Prop
  socialWelfareFunction : (D.alternatives → D.alternatives → Prop) → D.alternatives → D.alternatives → Prop
  aggregationRules : Prop
  paretoOptimality : Prop
  nondictatorship : Prop

structure PreferenceAggregationEvidence {D : DecisionSpace}
    (P : PreferenceAggregationPackage D) where
  aggregationRulesClosed : P.aggregationRules
  paretoOptimalityClosed : P.paretoOptimality
  nondictatorshipClosed : P.nondictatorship

def PreferenceAggregationClosed {D : DecisionSpace} (P : PreferenceAggregationPackage D) : Prop :=
  P.aggregationRules ∧ P.paretoOptimality ∧ P.nondictatorship

theorem preference_aggregation_closed_from_evidence {D : DecisionSpace}
    (P : PreferenceAggregationPackage D) (E : PreferenceAggregationEvidence P) :
    PreferenceAggregationClosed P := by
  exact And.intro E.aggregationRulesClosed (And.intro E.paretoOptimalityClosed E.nondictatorshipClosed)

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse