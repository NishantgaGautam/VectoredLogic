import Challenge

namespace VectoredLogic

/-- The proved version of `invert_involutive`. -/
theorem invert_involutive (s : State) : invert (invert s) = s := by
  cases s <;> rfl

/-- The proved version of `collide_commutative`. -/
theorem collide_commutative (a b : State) : collide a b = collide b a := by
  cases a <;> cases b <;> rfl

/-- The proved version of `collide_idempotent`. -/
theorem collide_idempotent (s : State) : collide s s = s := by
  cases s <;> rfl

/-- The proved version of `collision_closed`. -/
theorem collision_closed (a b : State) : collide a b = .proActive ∨
    collide a b = .retroActive ∨ collide a b = .paradox ∨ collide a b = .absolute := by
  cases a <;> cases b <;> simp [collide]

/-- Opposing directional states collide into the Emergent Paradox state. -/
theorem opposing_collision_produces_paradox (s : State) (h : Directional s) :
    collide s (invert s) = .paradox := by
  cases s <;> simp [Directional, invert, collide] at h ⊢

/-- The Emergent Paradox state remains paradoxical under collision. -/
theorem paradox_absorbs_active (s : State) : collide .paradox s = .paradox := by
  cases s <;> rfl

/-- The Static Absolute absorbs every collision. -/
theorem absolute_absorbs (s : State) : collide s .absolute = .absolute := by
  cases s <;> rfl

/-- The Static Absolute is absorbing from either side. -/
theorem absolute_is_absorbing (a b : State) :
    collide a .absolute = .absolute ∧ collide .absolute b = .absolute := by
  constructor <;> cases a <;> cases b <;> rfl

end VectoredLogic
