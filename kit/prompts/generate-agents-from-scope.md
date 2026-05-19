# Generate Agents From Scope

Create `.claude/agents` based on the project's real stack, scope, risks, and delivery process.

## Goal

Generate only useful project-specific agents with clear delegation contracts.

## Rules

- Create only agents that add value for this project.
- Adapt each agent to the detected stack and project scope.
- Do not create generic agents that repeat the same responsibility.
- Do not invent business rules, commands, architecture, or deployment details.
- Mark assumptions clearly.
- Prefer fewer high-signal agents over many vague agents.

## Required agent structure

Each generated agent must use this structure:

```md
---
name: agent-name
description: Use for...
---

# Agent Name

## Goal
## When to use
## Inputs
## What to inspect
## Rules
## Workflow
## Validation
## Stop conditions
## Output
```

## Minimum quality bar

Each agent must include:

- a specific goal;
- when it should be delegated to;
- required inputs or context;
- files, directories, or evidence to inspect;
- rules and constraints;
- a role-specific workflow;
- validation expectations;
- stop conditions;
- a predictable output format.

## Output

Return:

- agents created
- agents skipped and why
- assumptions
- recommended first use for each agent
