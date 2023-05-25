---
title: Reasoning over ontologies using Large Language Models
keywords:
- GPT
- Large Language Models
- OWL
- Reasoning
- Ontologies
lang: en-US
date-meta: '2023-05-25'
author-meta:
- John Doe
- Chris Mungall
header-includes: |
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta property="og:type" content="article" />
  <meta name="dc.title" content="Reasoning over ontologies using Large Language Models" />
  <meta name="citation_title" content="Reasoning over ontologies using Large Language Models" />
  <meta property="og:title" content="Reasoning over ontologies using Large Language Models" />
  <meta property="twitter:title" content="Reasoning over ontologies using Large Language Models" />
  <meta name="dc.date" content="2023-05-25" />
  <meta name="citation_publication_date" content="2023-05-25" />
  <meta property="article:published_time" content="2023-05-25" />
  <meta name="dc.modified" content="2023-05-25T17:49:24+00:00" />
  <meta property="article:modified_time" content="2023-05-25T17:49:24+00:00" />
  <meta name="dc.language" content="en-US" />
  <meta name="citation_language" content="en-US" />
  <meta name="dc.relation.ispartof" content="Manubot" />
  <meta name="dc.publisher" content="Manubot" />
  <meta name="citation_journal_title" content="Manubot" />
  <meta name="citation_technical_report_institution" content="Manubot" />
  <meta name="citation_author" content="John Doe" />
  <meta name="citation_author_institution" content="Department of Something, University of Whatever" />
  <meta name="citation_author_orcid" content="XXXX-XXXX-XXXX-XXXX" />
  <meta name="twitter:creator" content="@johndoe" />
  <meta name="citation_author" content="Chris Mungall" />
  <meta name="citation_author_institution" content="Environmental Genomics and Systems Biology Division, Lawrence Berkeley National Laboratory, Berkeley, CA, 94720" />
  <meta name="citation_author_orcid" content="0000-0002-6601-2165" />
  <link rel="canonical" href="https://cmungall.github.io/gpt-reasoning-manuscript/" />
  <meta property="og:url" content="https://cmungall.github.io/gpt-reasoning-manuscript/" />
  <meta property="twitter:url" content="https://cmungall.github.io/gpt-reasoning-manuscript/" />
  <meta name="citation_fulltext_html_url" content="https://cmungall.github.io/gpt-reasoning-manuscript/" />
  <meta name="citation_pdf_url" content="https://cmungall.github.io/gpt-reasoning-manuscript/manuscript.pdf" />
  <link rel="alternate" type="application/pdf" href="https://cmungall.github.io/gpt-reasoning-manuscript/manuscript.pdf" />
  <link rel="alternate" type="text/html" href="https://cmungall.github.io/gpt-reasoning-manuscript/v/86066ade729c57fe753dec6cb616c4af7fe3a278/" />
  <meta name="manubot_html_url_versioned" content="https://cmungall.github.io/gpt-reasoning-manuscript/v/86066ade729c57fe753dec6cb616c4af7fe3a278/" />
  <meta name="manubot_pdf_url_versioned" content="https://cmungall.github.io/gpt-reasoning-manuscript/v/86066ade729c57fe753dec6cb616c4af7fe3a278/manuscript.pdf" />
  <meta property="og:type" content="article" />
  <meta property="twitter:card" content="summary_large_image" />
  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />
  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />
  <meta name="theme-color" content="#ad1457" />
  <!-- end Manubot generated metadata -->
bibliography:
- content/manual-references.json
manubot-output-bibliography: output/references.json
manubot-output-citekeys: output/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
manubot-clear-requests-cache: false
...






<small><em>
This manuscript
([permalink](https://cmungall.github.io/gpt-reasoning-manuscript/v/86066ade729c57fe753dec6cb616c4af7fe3a278/))
was automatically generated
from [cmungall/gpt-reasoning-manuscript@86066ad](https://github.com/cmungall/gpt-reasoning-manuscript/tree/86066ade729c57fe753dec6cb616c4af7fe3a278)
on May 25, 2023.
</em></small>



## Authors



+ **John Doe**
  <br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [XXXX-XXXX-XXXX-XXXX](https://orcid.org/XXXX-XXXX-XXXX-XXXX)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [johndoe](https://github.com/johndoe)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [johndoe](https://twitter.com/johndoe)
    · ![Mastodon icon](images/mastodon.svg){.inline_icon width=16 height=16}
    [\@johndoe@mastodon.social](https://mastodon.social/@johndoe)
    <br>
  <small>
     Department of Something, University of Whatever
     · Funded by Grant XXXXXXXX
  </small>

+ **Chris Mungall**
  ^[✉](#correspondence)^<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0002-6601-2165](https://orcid.org/0000-0002-6601-2165)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [cmungall](https://github.com/cmungall)
    <br>
  <small>
     Environmental Genomics and Systems Biology Division, Lawrence Berkeley National Laboratory, Berkeley, CA, 94720
  </small>


::: {#correspondence}
✉ — Correspondence possible via [GitHub Issues](https://github.com/cmungall/gpt-reasoning-manuscript/issues)
or email to
Chris Mungall \<cjmungall@lbl.gov\>.


:::


## Abstract {.page_break_before}

Reasoning is a core component of human intelligence, and a key goal of AI research.
Reasoning has traditionally been the domain of symbolic AI, but recent advances in deep learning
and in particular Large Language Models (LLMs) such as GPT-3 seem to suggest that LLMs have
some latent reasoning ability.

To investigate this, we created a GPT-based reasoning agent that is intended to perform ontological reason using
a few-shot learning approach, using instruction prompting and in-context examples.
We also created a series of benchmarks to test ontological reasoning ability in LLMs and other systems.

Our results indicate that GPT is a poor reasoner, and is only able to perform ontological reasoning
on some of the simplest tasks. Even on these simple tasks, results are highly variable, with performance
degrading as the size of the ontology and the complexity of the explanation increases. In the cases
where it does successfully perform the task, this seems to essentially be an advanced pattern-based form
of lookup.

Our results indicate that a maximalist approach to using LLMs may be limiting, and that to be
successful AI should use hybrid strategies.


## Introduction

### Motivation

The field of Artificial Intelligence (AI) has historically been dichotomized into two schools of thought:
symbolic AI and connectionist AI. Symbolic AI is exemplified by ontologies and knowledge bases which represent
knowledge as a set of symbols together with rules for manipulating those symbols. Connectionist AI is exemplified by
deep learning and in particular Large Language Models (LLMs).

Recent advances in LLMs have shown exceptional abilities in tasks such as question-answering and text summarization,
with the use of in-context learning able to substitute for task-specific training[@doi:10.48550/arXiv.2005.14165].
The abilities of the latest generation of LLMs such as GPT-4 seem to suggest that LLMs may be able to perform
reasoning tasks that were previously the domain of symbolic AI, in the same way that a human may incorporate
reasoning as a part of natural language question-answering. The implication here is that symbolic AI and
classical deductive reasoning, if this is an emergent ability of LLMs. However, the ability of LLMs to
reason over knowledge bases has never been systematically evaluated.

### Ontological Reasoning

Ontology reasoning is a form of reasoning that is based on the structure of a knowledge base or ontology.

Ontology reasoning underpins...

### OWL Benchmark Datasets

- OWL2Bench
- LUBM

### Natural Language Benchmark Datasets

Existing datasets for testing reasoning ability include  LogiQA [@doi:10.48550/arXiv.2007.08124]
and ReClor [@doi:10.48550/arXiv.2002.04326]. These are aimed at testing reasoning abilities in the
context of natural language understanding. For example, LogiQA contains as instance with paragraph
"_David knows Mr. Zhang's friend Jack, and Jack knows David's friend  Ms. Lin. Everyone of them who knows Jack has a master's degree, and  everyone of them who knows Ms. Lin is from Shanghai._" and question "_Who is from Shanghai and has a masters degree?_".
Liu et al adapted these for evaluation using prompt-based LLMs such as GPT [@doi:10.48550/arXiv.2304.03439]..

### Contributions

We make the following contributions:

- We have curated a collection of benchmarks for testing ontological reasoning ability
- We created a GPT-based reasoning agent that is intended to perform ontological reason using
  a few-shot learning approach, using instruction prompting and in-context examples.
- We have evaluated the reasoning ability of GPT-3.5-turbo and GPT-4 on these benchmarks

## Methods

### Semi-automatic generation of reasoning benchmarks from ontologies

We created a methods to generate 6 classes of benchmarks

|code|task|description|
|---|---|---|
|sat|OntologyCoherencyTask|A task to determine if an ontology is coherent.      There should be a single answer, which is a boolean.|
|indirect|EntailedIndirectSuperClassTask|A task to determine the indirect superclasses of a class.|
|superc|EntailedTransitiveSuperClassTask|A task to determine the all transitive superclasses of a class.|
|expr|EntailedSubClassOfExpressionTask|A task to determine the subclasses of a class expression.|
|dir-sup|EntailedDirectSuperClassTask|A task to determine the direct superclasses of a class.      Includes those entailed by other axioms, e.g. equivalence axioms.      Context: a standard pattern in bio-ontologies is to infer the structure     of one ontology from another - e.g. the metabolic process branch in GO     may be entailed by GO equivalence axioms plus the IS_A links in CHEBI.|
|mrca|MostRecentCommonSubsumerTask|A task to determine the most specific common ancestors.|
|abox|ABoxTask|A task to infer assertions over property chains and transitvity in aboxes.|
➜

### GPT-based reasoning agent

We created a GPT-based reasoning agent that is intended to perform ontological reason using
a few-shot learning approach, using instruction prompting and in-context examples.

The reasoning agent is implemented as part of the OntoGPT system.

3 methods for performing reasoning were implemented:

- direct
- post-hoc explanation-based
- chain-of-thought reasoning

## Results

### Core Results

| model         | method           |     abox |   indirect |     expr |   superc |      mrca |   sat |
|:--------------|:-----------------|---------:|-----------:|---------:|---------:|----------:|------:|
| gpt-3.5-turbo | basic            | 0.642144 |   0.739145 | 0.718349 | 0.805197 | 0.0666667 |     0 |
| gpt-3.5-turbo | chain_of_thought | 0.305337 |   0.587469 | 0.623445 | 0.583613 | 0.1       |     0 |
| gpt-3.5-turbo | explanation      | 0.571429 |   0.561746 | 0.755769 | 0.68935  | 0.0333333 |     0 |
| gpt-4         | basic            | 1        |   0.940078 | 0.843523 | 0.96128  | 0.15      |     0 |
| gpt-4         | chain_of_thought | 0.928736 |   0.814255 | 0.664346 | 0.794363 | 0.15      |     0 |
| gpt-4         | explanation      | 0.994253 |   0.813462 | 0.848604 | 0.960348 | 0.183333  |     0 |

### Obfuscation

### Effect of chain lengths

## Discussion

blah


## Conclusions

blah


## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>

