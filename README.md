# Locating Named Points in 3D: Supplementary Material

Supplementary material for the paper *Locating Named Points in 3D from a Single RGB Image: A Survey with a Comparison of Open-Weight Models* by Zofia Smoleń, Piotr Podbielski, Maria Ganzha and Marcin Paprzycki, Systems Research Institute, Polish Academy of Sciences.

The paper is written for BDA 2026 (14th International Conference on Big Data Analytics, Springer LNCS), which allows 10–15 pages. The long material therefore lives here. The compiled document is [`supplement.pdf`](supplement.pdf).

| Section | File | Content |
|---|---|---|
| A | [`sections/A-queries.tex`](sections/A-queries.tex) | The 158 topic queries (P1.01–P4.22), verbatim in arXiv syntax; the PRISMA flow diagram; details of the search, screening and checks; the discussion of paths, interface models and 3D boxes |
| B | [`sections/B-methods.tex`](sections/B-methods.tex) | All 297 methods of the map, with the approach × output table |
| C | [`sections/C-prompts.tex`](sections/C-prompts.tex) | The prompts given to the models, verbatim, by route |
| (D) | [`sections/D-errors.tex`](sections/D-errors.tex) | Errors of the body methods on a synthetic testbed; kept as a file, not part of the document, because the paper no longer refers to it |

## Building

pdfLaTeX only, as for the paper (TeX Live 2025, Springer `llncs.cls` v2.25):

```
make            # builds build/supplement.pdf and copies it to supplement.pdf
```

Commit the rebuilt `supplement.pdf` together with any change to the sources, so that the PDF on GitHub always matches them.

## Keeping It Aligned with the Paper

The section files are copy-compatible with the paper's `\appendix`: each starts with its `\section{…}\label{app:…}` and uses only packages that the paper also loads. Material can therefore move between the paper and this repository in either direction without rewriting.

- Labels `app:queries`, `app:methods`, `app:prompts`, `app:errors`, `tab:grouplevel` and `tab:allmethods` are kept from the paper.
- The section files must not `\ref` anything in the paper, because the two documents are compiled separately. Refer to the paper in words (for example "the methodology section of the paper").
- When something moves, update the pointers on the other side in the same step and add a line to the log below.

### Sync Log

| Date | Direction | What | Paper version |
|---|---|---|---|
| 2026-11-11 | paper → repo | Appendices A–D copied verbatim (`semantic-3d-keypoint.tex` lines 573–1188). Two references into the paper replaced by words: `Section~\ref{sec:protocol}` in A, `Table~\ref{tab:levels}` in B. | Overleaf git `cd1a036` |
| 2026-11-11 | paper | Appendices removed from the paper. Body pointers now read "Supplement A–D" and cite this repository (`\bibitem{supplement}`). | on Overleaf |
| 2026-11-11 | both | Headings switched to title case in the paper and in Sections A–D here, to match the venue. | on Overleaf |
| 2026-11-11 | both | Informal verbs for model output replaced by the field's verbs (outputs, predicts, prompted, coverage); the path-only level has no extra label ("near miss" removed); here in C (heading), D (caption text) and B ("Path only"). The prompt text in C is verbatim and unchanged. | on Overleaf |
| 2026-11-11 | both | "where a paper is silent" replaced in the paper by a literal sentence on "n/s"; "n/s = not stated in the paper" added to the caption of the method table here. | on Overleaf |
| 2026-11-11 | paper → repo | The synthetic-testbed paragraph ("We measured the body methods on a synthetic flat … close to solved …") moved from the paper's One Category section to the start of Section D; its citations became plain names. | on Overleaf |
| 2026-11-12 | both | Phone removed from the survey. Paper: the Introduction no longer names a phone, the keyword "On-device vision" became "Vision-language models", and the Open Problems subsection "Running on a Phone" (memory and runtime of RoboBrain 2.5 and Qwen3-VL-2B at 4 bits) was commented out in the paper source, not moved here. Here in D: "virtual phone" → "virtual camera", the NLF runtime on a phone removed, "the phone's motion tracking" → "simulated motion tracking". The search queries in A and the method names in B are verbatim and unchanged. | on Overleaf (the Introduction has since named a smartphone again) |
| 2026-11-14 | repo | Style pass in the co-authors' style, as in the paper: impersonal voice (no "we"), past tense for the steps of the study, one claim per sentence, error stated as "a median error of N cm". Changed: the introduction in `supplement.tex` ("holds" → "contains"), the intro of A, the intro and the RynnBrain note in C, the opening paragraph and the table description in D. The search queries in A, the prompt texts in C, the table data in B and D, and the caption of B are unchanged. | on Overleaf |
| 2026-11-14 | paper → repo | The PRISMA 2020 flow diagram (Fig. 1 of the paper) moved verbatim to the start of Section A; `tikz` with `calc` and `arrows.meta` added to the preamble. Its last line still lists the old "levels" of the map; the paper now classifies by five facets and by approach (Section 4 there), and Section B here still uses "level". The paper replaced the diagram with a figure of the five facets and refers here for the flow. | on Overleaf |
| 2026-11-14 | paper → repo | Methodology shortened (about 1,900 → 1,430 words, including the new Classification and Selection paragraphs). Moved here, as "Search and Screening Details" at the start of Section A: database notes, the content of the four query passes, record counts per source, the backward-search rounds, the stage-1 model settings, the models whose exclusion was reversed, the extraction-form fields, the check details, the boundaries of the scope (paths, GUI models, 3D boxes) and two limitations. Citations became plain names. The paper keeps the old text as comments. | on Overleaf |
| 2026-11-14 | paper → repo | Methodology shortened again (about 1,430 → 900 words in Section 3 of the paper). Moved to "Search and Screening Details" in A: the PRISMA items that do not apply, PRISMA-S, the deposited files, the PRESS check, the stage-1 rule on abstract-decidable reasons, the composition of the 85 reassessed records, the 1350/124/1226 report counts, and the numbers of both authors' checks (26 rows: 25 decisions, 208 of 208 values; 121 rows: 6 changed). In the paper, the research questions moved to the Introduction, Scope became Eligibility (boundaries only), Selection for Evaluation moved to Section 6, and the old text is kept as comments. | on Overleaf |
| 2026-11-14 | both | Supplement B regrouped as Table 1 of the paper (one category; any object: pixel, 3D with one model, 3D with a monocular depth model, 3D with other input, path) instead of the old levels; column "Group" → "Approach". Rows brought in line with the paper's reading of the papers: A0 and ForceFlow output 3D metric from RGB-D (depth camera), SpatialPoint input RGB (its depth may come from a monocular model), Organic skeleton correspondence output 3D. A0 was listed twice (same arXiv 2504.12636; the second row is a thesis that reports it): the second row is commented out and merged, so the map has 302 methods, and the flow diagram in A counts 94 duplicates. The paper's counts (abstract, Section 3, Fig. 1, Table 1, Sections 4–5, Conclusion) were changed to match. | on Overleaf |
| 2026-11-14 | both | Tango3D excluded (E6: it locates the point on a point cloud of the object, not in the image); map 302 → 301, stage-2 exclusions 830 → 831. SHIC and Sampling-argmax input corrected from mesh/pc to RGB (abstracts: an image as input). Duplicate MJev-Spatial row removed from B. "347 reports" removed from the flow diagram: it does not agree with 302 methods plus 94 further reports, and the record-level register is not available. Deposit pointer in A now refers to Search and Screening Details. | | on Overleaf |
| 2026-11-14 | paper → repo | A: "deposited" and the PRESS review file pointer commented out (the files are not available yet). "Target group" replaced by the definition used in the paper (the included methods closest to the task, mainly vision-language pointing methods and methods that reach 3D). | | on Overleaf |
| 2026-11-14 | both | B: Cosmos-Reason2, Moondream 2 and Moondream 3.1 (model card only) Read FT → abs; paper "248 read in full text and 53 only in the abstract…" (was 251/50). A: PRESS review sentence commented out (no record); first-author check aligned with the paper ("every method used in the backward search and a random fifth of the others"). | | on Overleaf |
| 2026-11-14 | both | Recount tool fixed (it counted commented-out rows: the merged A0 row hid the MJev-Spatial removal). KITPose listed twice (arXiv 2502.18214), merged. Map 301 → 299; further reports 94 → 96, not included 925 → 927; every facet recounted (one category 155, any object 144, pixel 128, VLM pointing 80, CAPE 57, phrase 95, fixed labels 80, RGB 248, FT/abs 246/53). New B column "Obj." (any, body, animal, furn., other), filled from titles and abstracts; one-category split 51 / 38 / 1 / 65 replaces the earlier 71 / 35 / 11 / 39, which had no record. A: E7/E9 sentence added, E3 TODO; flow diagram gives the one-category split. | | on Overleaf |
| 2026-11-14 | paper → repo | A: the "October table" / "earlier table by the authors" (67 records) counted with the papers known to the authors (498 → 565), as in the paper; totals unchanged (3940, 24 290). | | on Overleaf |
| 2026-11-14 | both | LaserAttention excluded (E6: the full text, HAL hal-05766960, states RGB-D input; the object masks are lifted to 3D with sensor depth, and the point is computed from these point clouds, not located in the image). "Organic skeleton correspondence using part arrangements" excluded (E6: from its abstract, it matches the curve skeletons of two 3D shapes and takes no image). Both rows commented out in B with the reason. Map 299 → 297; A: stage-2 excluded 831 → 833 (E6 51 → 53), not included 927 → 929; group "3D with other input" 8 → 6. | | on Overleaf |
| 2026-11-14 | both | B row corrections from the full texts obtained later: Read abs → FT for Text-guided CAPE, ReaAct, DatPose, PAK-RCNN, Repurposing GANs (CVPR version), SCW-YOLO, SEPAM\_HRNet, CID (CVPR 2022 version), SimCC, Hand motion (ECCV 2004), bolt-vertex model, Semantic Shape and Trajectory (FT/abs 246/53 → 258/39). Text-guided CAPE output n/s → 2D, input n/s → RGB (the pixel column now has no n/s row). ReaAct out. kind p → p+path. Semantic Shape and Trajectory input RGB → RGB multi (image time series), out. kind p+path → p (the trajectory is the vehicle's motion). SCW-YOLO Obj. body → animal (cattle). Vision Mamba fish input n/s → RGB (abstract). RynnBrain 1.1 input RGB multi → RGB (its report: 3D from a single image). Years: SimCC 2021, Gemini 3 Pro 2025, Iftikhar thesis 2025 (portal). | | on Overleaf |
| 2026-11-14 | both | One-category "CAPE" rows with pointer "fixed labels" that are trained on the points of one category (no support image or description at inference) reclassified as Category keypoints 2D: Batista 2007, KITPose, DatPose, DeepProfile, D²APRNet, YOLOv8l-pose crab, Iftikhar thesis, goat network, MFLD-net, MICPose, PAK-RCNN, Pashu Vision, GMM heatmap decoding, Repurposing GANs (its TPAMI abstract adds landmark detection learned from one labelled example of one class), Sapiens, SCW-YOLO, SEPAM\_HRNet, shape-constrained linear predictors, SuperAnimal, transformer fish morphometry, Vision Mamba fish, Weld-SDPose (22 rows). DeepLabCut moved from Category template 3D and the bolt-vertex model from Object keypoints 3D to Category keypoints 2D (2D output; the bolt model's "dual views" are two copies of one image). Beyond Human Skeletons stays CAPE (no abstract or full text available). Approach counts: CAPE 57 → 35, category-specific 82 → 104 (2D keypoints 21 → 45, 3D keypoints 24 → 23, template 25 → 24, dense 12), correspondence 72 → 71, hybrid 8 → 7. Every facet sums to 297. | | on Overleaf |
| 2026-11-16 | paper → repo | The evaluation reports every model on the 291 photos of the measured sources; the two subsets are dropped (Tables 2–5, Procedure, Results, abstract of the paper). The prompts in C apply to all photos. | Overleaf `2275bdd` |
| 2026-11-16 | paper → repo | New prompts in C: MiMo-Embodied for pointing and for the 3D box, in the format of its documentation, and the official path prompts of RoboBrain 2.5. | Overleaf `2275bdd` |
| 2026-11-16 | paper → 3DSK repo | The record of the box-depth analysis is kept in the 3DSK repository (`kpstudy/paper/boxdepth`), not here; the paper points to it. | Overleaf `2275bdd` |
| 2026-11-16 | both | Supplement cleaned against the paper (gaps in A–D, style); title, authors and pointers aligned with the paper. | Overleaf `2275bdd` |
| 2026-11-16 | repo | A: the extraction form described by the eight classification columns of Table B; the translated queries stated as not reproduced (PRISMA-S qualified). B: BLaFA (arXiv title). Section D left out of the document (the file is kept), because the paper no longer refers to it. | Overleaf `7adde3d` |
| 2026-11-16 | repo → Overleaf | A copy of this repository at the same commit is in the Overleaf project of the paper, folder `SUPLEMENT/` next to `BASE_Marcin_Paprzycki/`. | Overleaf `7adde3d` |

## Evaluation Code and Records

The code behind the evaluation numbers of the paper is in the 3DSK repository (github.com/blackcow63/3DSK, private), branch `paper-experiments`, folder `kpstudy/paper`. The predictions and logs are in its release `wyniki-artykul-v1`.

## Provenance

Section B and the query list in Section A were generated from the review register by a script; the register and the script are not in this repository yet. Until they are, edit these files only together with the register, or the two will drift.

## Licence

The material in this repository (`supplement.tex`, `sections/`, `supplement.pdf`) is licensed under [CC BY 4.0](LICENSE). `llncs.cls` is Springer's LNCS document class, included only to build the PDF; it is not covered by this licence.

The paper itself is not in this repository; its copyright is governed by the publisher's agreement.
