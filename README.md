# Locating Named Points in 3D: Supplementary Material

Supplementary material for the paper *Locating Named Points in 3D from a Single RGB Image: A Survey with a Comparison of Open-Weight Models* by Zofia Smoleń, Piotr Podbielski, Maria Ganzha and Marcin Paprzycki, Systems Research Institute, Polish Academy of Sciences.

The paper is written for BDA 2026 (14th International Conference on Big Data Analytics, Springer LNCS), which allows 10–15 pages. The long material therefore lives here. The compiled document is [`supplement.pdf`](supplement.pdf).

| Section | File | Content |
|---|---|---|
| A | [`sections/A-queries.tex`](sections/A-queries.tex) | The 158 topic queries (P1.01–P4.22), verbatim in arXiv syntax; the PRISMA flow diagram; details of the search, screening and checks; the discussion of paths, interface models and 3D boxes |
| B | [`sections/B-methods.tex`](sections/B-methods.tex) | All 297 methods of the map, with the approach × output table |
| C | [`sections/C-prompts.tex`](sections/C-prompts.tex) | The prompts given to the models, verbatim, by route |

## Building

pdfLaTeX only, as for the paper (TeX Live 2025, Springer `llncs.cls` v2.25):

```
make            # builds build/supplement.pdf and copies it to supplement.pdf
```

Commit the rebuilt `supplement.pdf` together with any change to the sources, so that the PDF on GitHub always matches them.

## Evaluation Code and Records

The code behind the evaluation numbers of the paper is in the 3DSK repository (github.com/blackcow63/3DSK, private), branch `paper-experiments`, folder `kpstudy/paper`. The predictions and logs are in its release `wyniki-artykul-v1`.

## Provenance

Section B and the query list in Section A were generated from the review register by a script; the register and the script are not in this repository yet. Until they are, edit these files only together with the register, or the two will drift.

## Licence

The material in this repository (`supplement.tex`, `sections/`, `supplement.pdf`) is licensed under [CC BY 4.0](LICENSE). `llncs.cls` is Springer's LNCS document class, included only to build the PDF; it is not covered by this licence.

The paper itself is not in this repository; its copyright is governed by the publisher's agreement.
