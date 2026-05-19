# Technical Design Workflow

## Goal

Turn a significant technical problem into a documented decision with constraints, options, trade-offs, rollout steps, and validation strategy.

## When to use

Use before large implementation work, architecture changes, cross-cutting refactors, service boundary changes, data model changes, or decisions that affect multiple contributors.

## Required context

- Problem statement
- Business or operational motivation
- Current architecture and constraints
- Relevant files, docs, systems, or integrations
- Non-goals
- Decision criteria
- Required stakeholders or approval gates

## Rules

- Base the design on observed code, docs, and explicit requirements.
- Separate facts, assumptions, options, and recommendations.
- Compare realistic options instead of presenting only one path.
- Prefer the simplest design that satisfies constraints.
- Do not implement the design during the design workflow.
- Document durable decisions under `docs/claude/DECISIONS.md` when approved or clearly requested.

## Workflow

1. Define the problem and intended outcome.
2. Identify constraints, non-goals, and decision criteria.
3. Analyze current architecture with file or system evidence.
4. Propose viable options.
5. Compare trade-offs, risks, and migration cost.
6. Recommend one path with rationale.
7. Define implementation phases and approval gates.
8. Define validation, observability, and rollback strategy.
9. Identify documentation updates.
10. Stop before implementation.

## Validation

Confirm that:

- the recommendation addresses the original problem;
- trade-offs are explicit;
- risks and rollback concerns are covered;
- implementation phases are small enough to review;
- decision documentation is placed under `docs/claude/` when needed.

## Stop conditions

Stop and ask before continuing if:

- the problem or success criteria are unclear;
- critical system context is missing;
- the decision affects security, compliance, data retention, billing, infrastructure, or external contracts;
- no safe rollout or rollback path is identifiable;
- stakeholders must choose between materially different trade-offs.

## Output

Return:

- problem
- context and constraints
- options considered
- recommended decision
- trade-offs
- implementation phases
- validation and rollback strategy
- risks and open questions
