import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean

structure DecisionSpace where
  alternatives : Type u
  criteria : Type v
  multipleObjectives : Prop
  preferenceStructure : Prop
  outcomeFunction : alternatives → criteria → Real
  conclusion : DecisionSpaceClosed this

def DecisionSpaceClosed (D : DecisionSpace) : Prop :=
  D.multipleObjectives ∧ D.preferenceStructure

structure DecisionSpaceEvidence (D : DecisionSpace) where
  multipleObjectivesClosed : D.multipleObjectives
  preferenceStructureClosed : D.preferenceStructure

theorem decision_space_closed_from_evidence (D : DecisionSpace) (E : DecisionSpaceEvidence D) :
    DecisionSpaceClosed D := by
  exact And.intro E.multipleObjectivesClosed E.preferenceStructureClosed

end ManagementDecisionMakingMultipleObjectivesTheoremCanonicalLaneLean
end HautevilleHouse