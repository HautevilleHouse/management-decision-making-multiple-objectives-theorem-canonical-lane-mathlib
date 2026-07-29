import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure TopsisPackage where
  alternatives : List String
  criteria : List String
  decisionMatrix : List (List Float)
  normalizedMatrix : Prop
  weightedNormalizedMatrix : Prop
  positiveIdealSolution : List Float
  negativeIdealSolution : List Float
  closenessCoefficients : List Float
  normalizedMatrixTerm : normalizedMatrix
  weightedNormalizedMatrixTerm : weightedNormalizedMatrix

structure TopsisEvidence (T : TopsisPackage) where
  normalizedMatrixClosed : T.normalizedMatrix
  weightedNormalizedMatrixClosed : T.weightedNormalizedMatrix

def TopsisClosed (T : TopsisPackage) : Prop :=
  T.normalizedMatrix ∧ T.weightedNormalizedMatrix

theorem topsis_closed_from_evidence (T : TopsisPackage) (E : TopsisEvidence T) :
    TopsisClosed T :=
  And.intro E.normalizedMatrixClosed E.weightedNormalizedMatrixClosed

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse