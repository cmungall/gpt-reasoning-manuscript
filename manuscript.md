---
title: Reasoning over ontologies using Large Language Models
keywords:
- GPT
- Large Language Models
- OWL
- Reasoning
- Ontologies
lang: en-US
date-meta: '2023-05-24'
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
  <meta name="dc.date" content="2023-05-24" />
  <meta name="citation_publication_date" content="2023-05-24" />
  <meta property="article:published_time" content="2023-05-24" />
  <meta name="dc.modified" content="2023-05-24T19:52:13+00:00" />
  <meta property="article:modified_time" content="2023-05-24T19:52:13+00:00" />
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
  <link rel="alternate" type="text/html" href="https://cmungall.github.io/gpt-reasoning-manuscript/v/ca9b3ae08e149db1aedf35adb2f0a676e28c7db4/" />
  <meta name="manubot_html_url_versioned" content="https://cmungall.github.io/gpt-reasoning-manuscript/v/ca9b3ae08e149db1aedf35adb2f0a676e28c7db4/" />
  <meta name="manubot_pdf_url_versioned" content="https://cmungall.github.io/gpt-reasoning-manuscript/v/ca9b3ae08e149db1aedf35adb2f0a676e28c7db4/manuscript.pdf" />
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
([permalink](https://cmungall.github.io/gpt-reasoning-manuscript/v/ca9b3ae08e149db1aedf35adb2f0a676e28c7db4/))
was automatically generated
from [cmungall/gpt-reasoning-manuscript@ca9b3ae](https://github.com/cmungall/gpt-reasoning-manuscript/tree/ca9b3ae08e149db1aedf35adb2f0a676e28c7db4)
on May 24, 2023.
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

We...

Citation by DOI [@doi:10.7554/eLife.32822].

xx


## Methods

..


## Results

| task_type                        | method           |   f1_score |
|:---------------------------------|:-----------------|-----------:|
| EntailedIndirectSuperClassTask   | basic            |   0.739145 |
| EntailedIndirectSuperClassTask   | chain_of_thought |   0.587469 |
| EntailedIndirectSuperClassTask   | explanation      |   0.561746 |
| EntailedSubClassOfExpressionTask | basic            |   0.718349 |
| EntailedSubClassOfExpressionTask | chain_of_thought |   0.623445 |
| EntailedSubClassOfExpressionTask | explanation      |   0.755769 |
| EntailedTransitiveSuperClassTask | basic            |   0.805197 |
| EntailedTransitiveSuperClassTask | chain_of_thought |   0.583613 |
| EntailedTransitiveSuperClassTask | explanation      |   0.68935  |
| MostRecentCommonSubsumerTask     | basic            |   0        |
| MostRecentCommonSubsumerTask     | chain_of_thought |   0        |
| MostRecentCommonSubsumerTask     | explanation      |   0        |
| OntologyCoherencyTask            | basic            |   0        |
| OntologyCoherencyTask            | chain_of_thought |   0        |
| OntologyCoherencyTask            | explanation      |   0        |

## Discussion

blah


## Conclusions

blah


## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>

