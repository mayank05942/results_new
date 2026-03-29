# Anonymous Supplementary Materials (ICML 2026 Rebuttal)

This repository contains supplementary figures and tables referenced in the ICML 2026 rebuttal.

## Repository Layout

- `figures/`: figure files for rebuttal clarifications (PNG/PDF).
- `tables/`: table files in CSV/TSV format.
- `docs/notes.txt`: optional neutral notes.
- `scripts/clean_metadata_macos.sh`: metadata cleaning helper for macOS.

## Expected Files (replace placeholders)

### Figures
- `figures/fig1_main_result.png`
- `figures/fig2_ablation.png`
- `figures/fig3_qualitative.png`

### Tables
- `tables/table1_main_results.csv`
- `tables/table2_ablation.csv`
- `tables/table3_sensitivity.csv`

## Quick Start

1. Add your figure/table files with neutral names.
2. Run the metadata cleaner:
   ```bash
   bash scripts/clean_metadata_macos.sh
   ```
3. Initialize git with anonymous identity:
   ```bash
   git init
   git config user.name "Anonymous"
   git config user.email "anonymous@users.noreply.github.com"
   git add .
   git commit -m "Add anonymous rebuttal materials"
   ```

## Anonymity Notes

- Do not include author names, affiliations, acknowledgements, or project-internal paths.
- Avoid institution-specific filenames.
- Re-check commit author metadata before push.
- Confirm uploaded files contain no embedded identifying metadata.
