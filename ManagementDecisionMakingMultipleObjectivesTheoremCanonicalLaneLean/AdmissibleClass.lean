import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure DecisionAdmittedObject where
  alternativeSet : Type
  objectiveCount : Nat
  paretoFrontier : Prop
  conclusion : paretoFrontier

def DecisionWitnessClosed (O : DecisionAdmittedObject) : Prop :=
  O.paretoFrontier

structure AdmissibleClass where
  object : DecisionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DecisionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse