2026-08-22 21:00 — Upgrade calcit-apis and remove compact snapshot

- Updated Calcit to 0.13.29 and replaced unstable main dependencies with published tags for reel, respo-feather, and lilac.
- Removed the redundant `compact.cirru` compatibility snapshot; `calcit.cirru` now remains the only source snapshot.
- Replaced copied CLI documentation with pointers to `calcit docs read`.
- Replaced setup-cr/cr workflow commands and verified Calcit check-only, JS generation, Yarn immutable install, and Vite build.
