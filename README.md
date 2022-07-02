# MLOps tutorial for NOVA

[![Lint
Markdown](https://github.com/JJ/nova-mlops/actions/workflows/lint-markdown.yml/badge.svg)](https://github.com/JJ/nova-mlops/actions/workflows/lint-markdown.yml)
[![Check README and text](https://github.com/JJ/nova-mlops/actions/workflows/check-readme.yml/badge.svg)](https://github.com/JJ/nova-mlops/actions/workflows/check-readme.yml)
[![Lint Deno](https://github.com/JJ/nova-mlops/actions/workflows/lint-deno.yml/badge.svg)](https://github.com/JJ/nova-mlops/actions/workflows/lint-deno.yml)
[![Tests perl with system one](https://github.com/JJ/nova-mlops/actions/workflows/perl.yml/badge.svg)](https://github.com/JJ/nova-mlops/actions/workflows/perl.yml)

Course material for [MLOps summer course in
Nova](https://www.novaims.unl.pt/en/education/programs/workshops-and-short-duration-courses/summer-course-mlops/#).
Also available at [this URL](https://jj.github.io/nova-mlops).

## Learning outcomes of the curricular unit

1. Understand the fundamental principles of agile development
2. Understand how to integrate design, model development and
   operations in a continuous cycle.
3. Apply concepts of quality assurance at every step of the process.
4. Create a complete model as well as a report in a software artifact
   that changes continuously.
5. Applying fundamental machine learning and scientific principles to
   the above design and reports.

## Syllabus

Before the syllabus, we need to understand the
[principles](text/00.A-Few-Principles.md) |
[Web](https://jj.github.io/nova-mlops/00.A-Few-Principles.html) and [read the
introduction to the course](text/00.Intro.md) |
[Web](https://jj.github.io/nova-mlops/00.Intro.html).

1. [Design thinking for solving real-life
   problems](text/01.Design-Thinking.md) | [Web](https://jj.github.io/nova-mlops/01.Design-Thinking.html)
2. [Agile development](text/02.Agile.md) | [Web](https://jj.github.io/nova-mlops/02.Agile.html)
3. [Test driven development for scraping workflows](text/03.TDD.md) | [Web](https://jj.github.io/nova-mlops/03.TDD.html).
4. Containers for reproducible science.
5. Continuous integration.
6. [MLOps tools](text/06.MLOps-tools.md).
7. Open science: creation and deployment of machine learning projects.

## Sessions

The course is organized as a bootcamp, with different sessions over
which a project, and eventually a coauthored preprint, will be
developed. Students can use [this repository
template](https://github.com/JJ/nova-mlops-template) to kick-start their
projects with spell-checking workflows.

Session objectives and material are as follows:

1. [First session](sessions/01.md), meet and greet, organization and setup.
2. [Second session](sessions/02.md), first workflow stages.
3. [Third session](sessions/03.md), extracting and storing information.

## Some links

* [MLOps page](https://ml-ops.org).

* [MLOps stack](https://medium.com/pythoneers/mlops-tool-stack-requirement-in-machine-learning-pipeline-474b39f09dfc).

* [Twitter thread on academic vs. real-life data science/machine
  learning](https://twitter.com/svpino/status/1526532997901524998?s=21&t=BZ5He6QmvOV5h58LP7tYNg)

* [Data science workflow with R](https://www.business-science.io/learning-r/2018/11/04/data-science-r-cheatsheet.html?utm_content=bufferbda2d&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer)

* [Fundamentals of data visualization](https://clauswilke.com/dataviz/)

* [Designing machine learning systems](https://www.oreilly.com/library/view/designing-machine-learning/9781098107956/)

* [No-code ML](https://t.co/ItxOFhwEy9)

* [MLOps zoomcamp](https://github.com/DataTalksClub/mlops-zoomcamp)

* [Data science in the real world](https://twitter.com/marktenenholtz/status/1540303742662090752)

* [Splitting your data properly](https://twitter.com/svpino/status/1542840465455607809).

## How to run this

Most tasks that are included in workflows are also in the top-level `Makefile`

> Should be all of them, although at a certain point they can be out of sync.

But there are a few tools that you should have installed in your system

* Perl, preferably installed via `perlbrew`, including `cpanm`
* R

## LICENSE

All text here is released under a `cc-by-sa` license, all code under the GPL.
