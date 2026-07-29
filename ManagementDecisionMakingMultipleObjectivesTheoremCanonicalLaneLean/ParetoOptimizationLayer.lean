import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure ParetoOptimizationLayer (M : MultipleObjectiveDecisionPackage) where
  nonDominatedSet : Prop
  idealPoint : Prop
  nadirPoint : Prop
  tradeoffCurve : Prop

structure ParetoOptimizationEvidence {M : MultipleObjectiveDecisionPackage}
    (P : ParetoOptimizationLayer M) where
  nonDominatedSetClosed : P.nonDominatedSet
  idealPointClosed : P.idealPoint
  nadirPointClosed : P.nadirPoint
  tradeoffCurveClosed : P.tradeoffCurve

def ParetoOptimizationClosed {M : MultipleObjectiveDecisionPackage}
    (P : ParetoOptimizationLayer M) : Prop :=
  P.nonDominatedSet ∧ P.idealPoint ∧ P.nadirPoint ∧ P.tradeoffCurve

theorem pareto_optimization_closed_from_evidence {M : MultipleObjectiveDecisionPackage}
    (P : ParetoOptimizationLayer M) (E : ParetoOptimizationEvidence P) :
    ParetoOptimizationClosed P :=
  And.intro E.nonDominatedSetClosed (And.intro E.idealPointClosed
    (And.intro E.nadirPointClosed E.tradeoffCurveClosed))

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse