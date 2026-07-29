import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure WeightingMethodPackage (M : MultipleObjectiveDecisionPackage) where
  weightVector : Prop
  scalarizationFunction : Prop
  weightedSumObjective : Prop
  preferenceIncorporated : Prop

structure WeightingMethodEvidence {M : MultipleObjectiveDecisionPackage}
    (W : WeightingMethodPackage M) where
  weightVectorClosed : W.weightVector
  scalarizationFunctionClosed : W.scalarizationFunction
  weightedSumObjectiveClosed : W.weightedSumObjective
  preferenceIncorporatedClosed : W.preferenceIncorporated

def WeightingMethodClosed {M : MultipleObjectiveDecisionPackage}
    (W : WeightingMethodPackage M) : Prop :=
  W.weightVector ∧ W.scalarizationFunction ∧ W.weightedSumObjective ∧ W.preferenceIncorporated

theorem weighting_method_closed_from_evidence {M : MultipleObjectiveDecisionPackage}
    (W : WeightingMethodPackage M) (E : WeightingMethodEvidence W) :
    WeightingMethodClosed W :=
  And.intro E.weightVectorClosed (And.intro E.scalarizationFunctionClosed
    (And.intro E.weightedSumObjectiveClosed E.preferenceIncorporatedClosed))

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse