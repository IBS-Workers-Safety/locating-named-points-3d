# Locating named points in 3D: supplementary material

Supplementary material for the paper *Locating Named Points in 3D from a Single RGB Image: A Survey with a Comparison of Open-Weight Models* (working title) by Zofia Smoleń, Piotr Podbielski, Maria Ganzha and Marcin Paprzycki, Systems Research Institute, Polish Academy of Sciences.

The paper has to fit the conference page limit, so the long material lives here. The compiled document is [`supplement.pdf`](supplement.pdf).

| Section | File | Content |
|---|---|---|
| A | [`sections/A-queries.tex`](sections/A-queries.tex) | The 158 topic queries (P1.01–P4.22), verbatim in arXiv syntax |
| B | [`sections/B-methods.tex`](sections/B-methods.tex) | All 303 methods of the map, with the group × level table |
| C | [`sections/C-prompts.tex`](sections/C-prompts.tex) | The questions given to the models |
| D | [`sections/D-errors.tex`](sections/D-errors.tex) | Errors on the synthetic testbed |

## Building

pdfLaTeX only, as for the paper (TeX Live 2025, Springer `llncs.cls` v2.25):

```
make            # builds build/supplement.pdf and copies it to supplement.pdf
```

Commit the rebuilt `supplement.pdf` together with any change to the sources, so that the PDF on GitHub always matches them.

## Keeping it aligned with the paper

The section files are copy-compatible with the paper's `\appendix`: each starts with its `\section{…}\label{app:…}` and uses only packages that the paper also loads. Material can therefore move between the paper and this repository in either direction without rewriting.

- Labels `app:queries`, `app:methods`, `app:prompts`, `app:errors`, `tab:grouplevel` and `tab:allmethods` are kept from the paper.
- The section files must not `\ref` anything in the paper, because the two documents are compiled separately. Refer to the paper in words (for example "the methodology section of the paper").
- When something moves, update the pointers on the other side in the same step and add a line to the log below.

### Sync log

| Date | Direction | What | Paper version |
|---|---|---|---|
| 2026-11-11 | paper → repo | Appendices A–D copied verbatim (`semantic-3d-keypoint.tex` lines 573–1188). Two references into the paper replaced by words: `Section~\ref{sec:protocol}` in A, `Table~\ref{tab:levels}` in B. | Overleaf git `cd1a036` |
| 2026-11-11 | paper | Appendices removed from the paper. Body pointers now read "Supplement A–D" and cite this repository (`\bibitem{supplement}`). | local, not yet on Overleaf |
| 2026-11-11 | both | Headings switched to title case in the paper and in Sections A–D here, to match the venue. | local, not yet on Overleaf |
| 2026-11-11 | both | Informal verbs for model output replaced by the field's verbs (outputs, predicts, prompted, coverage); the path-only level has no extra label ("near miss" removed); here in C (heading), D (caption text) and B ("Path only"). The prompt text in C is verbatim and unchanged. | local, not yet on Overleaf |

## Provenance

Section B and the query list in Section A were generated from the review register by a script; the register and the script are not in this repository yet. Until they are, edit these files only together with the register, or the two will drift.

## Licence

The material in this repository (`supplement.tex`, `sections/`, `supplement.pdf`) is licensed under [CC BY 4.0](LICENSE). `llncs.cls` is Springer's LNCS document class, included only to build the PDF; it is not covered by this licence.

The paper itself is not in this repository; its copyright is governed by the publisher's agreement.
