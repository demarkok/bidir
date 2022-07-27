From hahn Require Import Hahn.


Definition LEM := forall p, p \/ ~p.
Definition DNE := forall p, ~~p -> p.

Definition PL := forall (p q : Prop), ((p -> q) -> p) -> p.

Lemma foo : DNE -> PL.
Proof.
  intro lem.
  unfold PL, DNE in *.
  ins.
  apply lem.
  intro; apply H0.
  apply H.
  easy.
Qed.

Lemma bar: LEM -> PL.
Proof.
  unfold LEM, PL.
  intro lem.
  ins.
  destruct (lem p); auto.
  now apply H.
Qed.
