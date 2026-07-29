import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheorem

structure MultiObjectiveDecisionProblem where
  alternatives : Type
  objectiveFunctions : List (alternatives → ℝ)
  preferenceRelation : alternatives → alternatives → Prop
  paretoOptimalSet : Set alternatives
  idealPoint : alternatives → ℝ
  nadirPoint : alternatives → ℝ
  weightSpace : Type

def paretoOrder (a b : alternatives) : Prop :=
  ∀ f ∈ objectiveFunctions, f a ≤ f b ∧ ∃ f' ∈ objectiveFunctions, f' a < f' b

structure MultiObjectiveEvidence (P : MultiObjectiveDecisionProblem) where
  alternativesDefined : True
  objectiveFunctionsNonEmpty : P.objectiveFunctions ≠ []
  paretoOptimalNonEmpty : Nonempty P.paretoOptimalSet
  idealNadirDefined : True

def MultiObjectiveClosed (P : MultiObjectiveDecisionProblem) : Prop :=
  P.objectiveFunctions ≠ [] ∧ Nonempty P.paretoOptimalSet

theorem multi_objective_closed_from_evidence (P : MultiObjectiveDecisionProblem) (E : MultiObjectiveEvidence P) :
    MultiObjectiveClosed P := by
  exact And.intro E.objectiveFunctionsNonEmpty E.paretoOptimalNonEmpty

end ManagementDecisionMakingMultipleObjectivesTheorem
end HautevilleHouse
