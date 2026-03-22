## Must read
@design_spec.md
@content.md
@AGENTS.md
@CHANGELOG.md

## Changelog Rules

**MANDATORY — do this before touching any file, every single conversation, no exceptions.**

Any user message that describes a UI change, feature request, bug fix, or design adjustment counts as a requirement. Before writing a single line of code or editing any file:

1. **New requirement** → add it to `CHANGELOG.md` under the appropriate category first, then proceed.
2. **Overlapping requirement** (same feature or area, even if intent changed) → update the existing entry in place. Do not add duplicates.

This is not optional. Skipping the changelog update is a critical violation of workflow. If you catch yourself editing a file before updating the changelog, stop, update the changelog first, then resume.
