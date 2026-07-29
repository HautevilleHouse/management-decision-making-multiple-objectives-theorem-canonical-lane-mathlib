import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure ObjectiveWeightsPackage where
  objectiveCount : Nat
  weightVector : List Float
  weightsNormalized : Prop
  weightSumOne : Prop
  nonnegativeWeights : Prop

def ObjectiveWeightsClosed (O : ObjectiveWeightsPackage) : Prop :=
  O.weightsNormalized ∧ O.weightSumOne ∧ O.nonnegativeWeights

structure ObjectiveWeightsEvidence (O : ObjectiveWeightsPackage) where
  weightsNormalizedClosed : O.weightsNormalized
  weightSumOneClosed : O.weightSumOne
  nonnegativeWeightsClosed : O.nonnegativeWeights

theorem objective_weights_closed_from_evidence (O : ObjectiveWeightsPackage) (E : ObjectiveWeightsEvidence O) : ObjectiveWeightsClosed O := by
  exact And.intro E.weightsNormalizedClosed (And.intro E.weightSumOneClosed E.nonnegativeWeightsClosed)

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse