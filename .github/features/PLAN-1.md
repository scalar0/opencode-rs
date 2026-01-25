# Implementation Plan

## Executive Summary

Automate detection of new opencode OpenAPI spec tags, regenerate this Rust SDK using the Dockerized OpenAPI Generator CLI, align crate versioning with the upstream tag, and commit the regenerated output to the repository while preserving installability as a dependency.

## Key Objectives

- Detect the latest upstream opencode tag and fetch its `packages/sdk/openapi.json` spec.
- Regenerate the Rust SDK using the Dockerized OpenAPI Generator CLI as previously used.
- Mirror the upstream tag version in this crate's version metadata.
- Commit regenerated artifacts back to the repo (or prepare for PR flow if needed).
- Provide clear CI/CD controls, auditing, and safe permissions.

## High-Level Approach

Define a GitHub Actions workflow that: (1) determines the latest upstream tag matching `vM.m.p`, (2) compares it with a locally recorded last-processed tag, (3) runs Dockerized OpenAPI Generator with a pinned version and config, (4) updates crate metadata to match the tag, (5) validates the result, and (6) opens a PR with auto-merge enabled when checks pass. Store the last-processed tag in-repo for idempotence and use least-privilege permissions for CI writes.

# Phase 1

| PhaseId | Name                               | Goal                                                      | Deliverable                         |
| ------- | ---------------------------------- | --------------------------------------------------------- | ----------------------------------- |
| 1       | Spec detection and version mapping | Reliably resolve the latest upstream `vM.m.p` tag and map to semver | Tag resolution strategy documented  |

## Risks

| RiskId | Description | Impact | Likelihood | Mitigation |
| ------ | ----------- | ------ | ---------- | ---------- |
| 1.1    | Tag naming or ordering differs from expected semver | 2 | 2 | Filter strictly to `vM.m.p` and sort semver; fail with clear log if none found. |
| 1.2    | Spec file path changes across tags | 2 | 1 | Fail with clear error and notification; make path configurable. |

## Task 1.1

| TaskId | Name | Dependencies |
| ------ | ---- | ------------ |
| 1.1    | Define tag resolution and storage strategy | 0 |

### Sequential Steps

| StepId | Description | Verification |
| ------ | ----------- | ------------ |
| 1.1.1  | Use GitHub Tags API and filter strictly to `vM.m.p`, then select latest by semver ordering. | `documented in plan` |
| 1.1.2  | Define how to store last-processed tag in repo (e.g., `./.github/last-upstream-tag.txt`). | `documented in plan` |
| 1.1.3  | Specify mapping rule from upstream tag to crate version (e.g., strip leading `v`). | `documented in plan` |

### Quality Gates

| GateId | Description | Validation |
| ------ | ----------- | ---------- |
| 1.1.1  | Strategy includes deterministic tag selection and explicit version mapping. | `review checklist` |

# Phase 2

| PhaseId | Name                       | Goal                                                         | Deliverable                         |
| ------- | -------------------------- | ------------------------------------------------------------ | ----------------------------------- |
| 2       | Generation automation       | CI workflow regenerates SDK from latest spec using Docker CLI | Draft workflow and generator config |

## Risks

| RiskId | Description | Impact | Likelihood | Mitigation |
| ------ | ----------- | ------ | ---------- | ---------- |
| 2.1    | Dockerized generator version drift alters output | 2 | 2 | Pin image tag and record it in repo. |
| 2.2    | Workflow lacks permissions to commit changes | 3 | 2 | Scope `permissions` and document required write permissions. |
| 2.3    | Generated output not reproducible across runs | 2 | 2 | Enforce deterministic flags and avoid timestamps in output. |

## Task 2.1

| TaskId | Name | Dependencies |
| ------ | ---- | ------------ |
| 2.1    | Define generator invocation and inputs | 1.1 |

### Sequential Steps

| StepId | Description | Verification |
| ------ | ----------- | ------------ |
| 2.1.1  | Capture current generator invocation (Docker image, command, config, input spec URL) in a script. | `script exists` |
| 2.1.2  | Add a config file for generator settings if missing (naming conventions, package name, feature flags). | `file exists` |
| 2.1.3  | Ensure spec URL is built from resolved tag and stored in CI env. | `script output` |

### Quality Gates

| GateId | Description | Validation |
| ------ | ----------- | ---------- |
| 2.1.1  | Generator invocation uses pinned Docker image tag. | `config review` |

## Task 2.2

| TaskId | Name | Dependencies |
| ------ | ---- | ------------ |
| 2.2    | Create GitHub Actions workflow for regeneration with PR + auto-merge | 2.1 |

### Sequential Steps

| StepId | Description | Verification |
| ------ | ----------- | ------------ |
| 2.2.1  | Add workflow triggered on schedule and manual dispatch. | `workflow syntax check` |
| 2.2.2  | Add steps to resolve latest tag and compare to stored tag. | `workflow syntax check` |
| 2.2.3  | Add Dockerized generator step using checked-out repo as output. | `workflow syntax check` |
| 2.2.4  | Add PR creation and auto-merge enablement with least-privilege token and clear message. | `workflow syntax check` |

### Quality Gates

| GateId | Description | Validation |
| ------ | ----------- | ---------- |
| 2.2.1  | Workflow `permissions` are minimal and explicitly set. | `review checklist` |
| 2.2.2  | Workflow includes safeguards to skip if no new tag. | `review checklist` |

# Phase 3

| PhaseId | Name                     | Goal                                                   | Deliverable                          |
| ------- | ------------------------ | ------------------------------------------------------ | ------------------------------------ |
| 3       | Version alignment and QA | Crate version mirrors upstream tag and builds cleanly | Version update + validation steps   |

## Risks

| RiskId | Description | Impact | Likelihood | Mitigation |
| ------ | ----------- | ------ | ---------- | ---------- |
| 3.1    | Crate version not updated consistently | 2 | 2 | Centralize version update step and validate `Cargo.toml`. |
| 3.2    | Regenerated SDK fails to compile | 3 | 2 | Add build check after generation and before commit. |

## Task 3.1

| TaskId | Name | Dependencies |
| ------ | ---- | ------------ |
| 3.1    | Implement version synchronization | 2.2 |

### Sequential Steps

| StepId | Description | Verification |
| ------ | ----------- | ------------ |
| 3.1.1  | Update crate version to match upstream tag (strip leading `v`). | `cargo metadata` |
| 3.1.2  | Ensure any additional version fields are updated if present. | `rg 'version'` |

### Quality Gates

| GateId | Description | Validation |
| ------ | ----------- | ---------- |
| 3.1.1  | Crate version equals upstream tag version after generation. | `cargo metadata` |

## Task 3.2

| TaskId | Name | Dependencies |
| ------ | ---- | ------------ |
| 3.2    | Validate generated crate and commit | 3.1 |

### Sequential Steps

| StepId | Description | Verification |
| ------ | ----------- | ------------ |
| 3.2.1  | Run build or basic checks in CI after generation. | `cargo build` |
| 3.2.2  | Commit generated output and updated tag marker file. | `git status` |

### Quality Gates

| GateId | Description | Validation |
| ------ | ----------- | ---------- |
| 3.2.1  | Build step succeeds before commit. | `cargo build` |
| 3.2.2  | Commit only occurs when generation produces changes. | `git status --porcelain` |
