import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure OutrankingMethodsPackage where
  alternatives : List String
  criteriaWeights : List Float
  concordanceIndex : Float
  discordanceIndex : Float
  outrankingRelation : Prop
  distillationProcedure : Prop

def OutrankingMethodsClosed (O : OutrankingMethodsPackage) : Prop :=
  O.outrankingRelation ∧ O.distillationProcedure

structure OutrankingMethodsEvidence (O : OutrankingMethodsPackage) where
  outrankingRelationClosed : O.outrankingRelation
  distillationProcedureClosed : O.distillationProcedure

theorem outranking_methods_closed_from_evidence (O : OutrankingMethodsPackage) (E : OutrankingMethodsEvidence O) : OutrankingMethodsClosed O := by
  exact And.intro E.outrankingRelationClosed E.distillationProcedureClosed

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse