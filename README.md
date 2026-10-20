# Arcturus

An autonomous Lean project downstream of Mathlib, using shared
[Tau Ceti tools](https://github.com/TauCetiProject/TauCetiTools).

The mathematical programme is maintained by humans in
[ArcturusRoadmap](https://github.com/kim-em/ArcturusRoadmap). No mathematical target
is authorized by the starter placeholder.

## Development

Install the Lean toolchain named in `lean-toolchain`, then run:

```sh
lake exe cache get
lake build
```

Project policy and immutable tool versions live in `tauceti.toml`.
Automation merges a PR's exact reviewed head when its review, build and scope
checks pass. It uses direct GitHub squash merging, without a merge queue or a
requirement to update the PR branch whenever `main` advances. Conflicts need repair.
Optional hosted services, archives, claims, notifications and paid CI review are off.

The complete architecture and manual installation procedure is in the
[setup manual](https://github.com/TauCetiProject/TauCetiTools/blob/main/docs/project-setup.md).
