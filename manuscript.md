---
title: Reasoning over ontologies using Large Language Models
keywords:
- GPT
- Large Language Models
- OWL
- Reasoning
- Ontologies
lang: en-US
date-meta: '2023-05-30'
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
  <meta name="dc.date" content="2023-05-30" />
  <meta name="citation_publication_date" content="2023-05-30" />
  <meta property="article:published_time" content="2023-05-30" />
  <meta name="dc.modified" content="2023-05-30T18:46:22+00:00" />
  <meta property="article:modified_time" content="2023-05-30T18:46:22+00:00" />
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
  <link rel="alternate" type="text/html" href="https://cmungall.github.io/gpt-reasoning-manuscript/v/fba1ca342483d3961a7bdb85d0d58485561ad9a3/" />
  <meta name="manubot_html_url_versioned" content="https://cmungall.github.io/gpt-reasoning-manuscript/v/fba1ca342483d3961a7bdb85d0d58485561ad9a3/" />
  <meta name="manubot_pdf_url_versioned" content="https://cmungall.github.io/gpt-reasoning-manuscript/v/fba1ca342483d3961a7bdb85d0d58485561ad9a3/manuscript.pdf" />
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
([permalink](https://cmungall.github.io/gpt-reasoning-manuscript/v/fba1ca342483d3961a7bdb85d0d58485561ad9a3/))
was automatically generated
from [cmungall/gpt-reasoning-manuscript@fba1ca3](https://github.com/cmungall/gpt-reasoning-manuscript/tree/fba1ca342483d3961a7bdb85d0d58485561ad9a3)
on May 30, 2023.
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

Ontology reasoning underpins... TODO

### OWL Benchmark Datasets

TODO

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

TEST: 1

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

#### Direct reasoning

## Results

### Core Results

<style type="text/css">
#T_1946c_row0_col4, #T_1946c_row1_col4, #T_1946c_row2_col4, #T_1946c_row3_col0, #T_1946c_row3_col2, #T_1946c_row3_col4, #T_1946c_row3_col5, #T_1946c_row4_col4, #T_1946c_row5_col1, #T_1946c_row5_col3, #T_1946c_row5_col4 {
  font-weight: bold;
}
</style>
<table id="T_1946c">
  <thead>
    <tr>
      <th class="blank" >&nbsp;</th>
      <th class="index_name level0" >task</th>
      <th id="T_1946c_level0_col0" class="col_heading level0 col0" >abox</th>
      <th id="T_1946c_level0_col1" class="col_heading level0 col1" >expr</th>
      <th id="T_1946c_level0_col2" class="col_heading level0 col2" >indirect</th>
      <th id="T_1946c_level0_col3" class="col_heading level0 col3" >mrca</th>
      <th id="T_1946c_level0_col4" class="col_heading level0 col4" >sat</th>
      <th id="T_1946c_level0_col5" class="col_heading level0 col5" >superc</th>
    </tr>
    <tr>
      <th class="index_name level0" >model</th>
      <th class="index_name level1" >mthd</th>
      <th class="blank col0" >&nbsp;</th>
      <th class="blank col1" >&nbsp;</th>
      <th class="blank col2" >&nbsp;</th>
      <th class="blank col3" >&nbsp;</th>
      <th class="blank col4" >&nbsp;</th>
      <th class="blank col5" >&nbsp;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_1946c_level0_row0" class="row_heading level0 row0" rowspan="3">gpt-3.5-turbo</th>
      <th id="T_1946c_level1_row0" class="row_heading level1 row0" >basic</th>
      <td id="T_1946c_row0_col0" class="data row0 col0" >0.642</td>
      <td id="T_1946c_row0_col1" class="data row0 col1" >0.718</td>
      <td id="T_1946c_row0_col2" class="data row0 col2" >0.739</td>
      <td id="T_1946c_row0_col3" class="data row0 col3" >0.067</td>
      <td id="T_1946c_row0_col4" class="data row0 col4" >0.000</td>
      <td id="T_1946c_row0_col5" class="data row0 col5" >0.805</td>
    </tr>
    <tr>
      <th id="T_1946c_level1_row1" class="row_heading level1 row1" >cot</th>
      <td id="T_1946c_row1_col0" class="data row1 col0" >0.305</td>
      <td id="T_1946c_row1_col1" class="data row1 col1" >0.623</td>
      <td id="T_1946c_row1_col2" class="data row1 col2" >0.587</td>
      <td id="T_1946c_row1_col3" class="data row1 col3" >0.100</td>
      <td id="T_1946c_row1_col4" class="data row1 col4" >0.000</td>
      <td id="T_1946c_row1_col5" class="data row1 col5" >0.584</td>
    </tr>
    <tr>
      <th id="T_1946c_level1_row2" class="row_heading level1 row2" >expl</th>
      <td id="T_1946c_row2_col0" class="data row2 col0" >0.571</td>
      <td id="T_1946c_row2_col1" class="data row2 col1" >0.756</td>
      <td id="T_1946c_row2_col2" class="data row2 col2" >0.562</td>
      <td id="T_1946c_row2_col3" class="data row2 col3" >0.033</td>
      <td id="T_1946c_row2_col4" class="data row2 col4" >0.000</td>
      <td id="T_1946c_row2_col5" class="data row2 col5" >0.689</td>
    </tr>
    <tr>
      <th id="T_1946c_level0_row3" class="row_heading level0 row3" rowspan="3">gpt-4</th>
      <th id="T_1946c_level1_row3" class="row_heading level1 row3" >basic</th>
      <td id="T_1946c_row3_col0" class="data row3 col0" >1.000</td>
      <td id="T_1946c_row3_col1" class="data row3 col1" >0.844</td>
      <td id="T_1946c_row3_col2" class="data row3 col2" >0.940</td>
      <td id="T_1946c_row3_col3" class="data row3 col3" >0.150</td>
      <td id="T_1946c_row3_col4" class="data row3 col4" >0.000</td>
      <td id="T_1946c_row3_col5" class="data row3 col5" >0.961</td>
    </tr>
    <tr>
      <th id="T_1946c_level1_row4" class="row_heading level1 row4" >cot</th>
      <td id="T_1946c_row4_col0" class="data row4 col0" >0.929</td>
      <td id="T_1946c_row4_col1" class="data row4 col1" >0.664</td>
      <td id="T_1946c_row4_col2" class="data row4 col2" >0.814</td>
      <td id="T_1946c_row4_col3" class="data row4 col3" >0.150</td>
      <td id="T_1946c_row4_col4" class="data row4 col4" >0.000</td>
      <td id="T_1946c_row4_col5" class="data row4 col5" >0.794</td>
    </tr>
    <tr>
      <th id="T_1946c_level1_row5" class="row_heading level1 row5" >expl</th>
      <td id="T_1946c_row5_col0" class="data row5 col0" >0.994</td>
      <td id="T_1946c_row5_col1" class="data row5 col1" >0.849</td>
      <td id="T_1946c_row5_col2" class="data row5 col2" >0.813</td>
      <td id="T_1946c_row5_col3" class="data row5 col3" >0.183</td>
      <td id="T_1946c_row5_col4" class="data row5 col4" >0.000</td>
      <td id="T_1946c_row5_col5" class="data row5 col5" >0.960</td>
    </tr>
  </tbody>
</table>


### Obfuscation

<style type="text/css">
#T_76227_row0_col4, #T_76227_row1_col4, #T_76227_row2_col4, #T_76227_row3_col0, #T_76227_row3_col2, #T_76227_row3_col3, #T_76227_row3_col4, #T_76227_row3_col5, #T_76227_row4_col1, #T_76227_row4_col3, #T_76227_row4_col4, #T_76227_row5_col4 {
  font-weight: bold;
}
</style>
<table id="T_76227">
  <thead>
    <tr>
      <th class="blank" >&nbsp;</th>
      <th class="index_name level0" >task</th>
      <th id="T_76227_level0_col0" class="col_heading level0 col0" >abox</th>
      <th id="T_76227_level0_col1" class="col_heading level0 col1" >expr</th>
      <th id="T_76227_level0_col2" class="col_heading level0 col2" >indirect</th>
      <th id="T_76227_level0_col3" class="col_heading level0 col3" >mrca</th>
      <th id="T_76227_level0_col4" class="col_heading level0 col4" >sat</th>
      <th id="T_76227_level0_col5" class="col_heading level0 col5" >superc</th>
    </tr>
    <tr>
      <th class="index_name level0" >model</th>
      <th class="index_name level1" >method</th>
      <th class="blank col0" >&nbsp;</th>
      <th class="blank col1" >&nbsp;</th>
      <th class="blank col2" >&nbsp;</th>
      <th class="blank col3" >&nbsp;</th>
      <th class="blank col4" >&nbsp;</th>
      <th class="blank col5" >&nbsp;</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th id="T_76227_level0_row0" class="row_heading level0 row0" rowspan="3">gpt-3.5-turbo</th>
      <th id="T_76227_level1_row0" class="row_heading level1 row0" >basic</th>
      <td id="T_76227_row0_col0" class="data row0 col0" >0.000</td>
      <td id="T_76227_row0_col1" class="data row0 col1" >0.270</td>
      <td id="T_76227_row0_col2" class="data row0 col2" >0.256</td>
      <td id="T_76227_row0_col3" class="data row0 col3" >0.000</td>
      <td id="T_76227_row0_col4" class="data row0 col4" >0.000</td>
      <td id="T_76227_row0_col5" class="data row0 col5" >0.426</td>
    </tr>
    <tr>
      <th id="T_76227_level1_row1" class="row_heading level1 row1" >chain_of_thought</th>
      <td id="T_76227_row1_col0" class="data row1 col0" >0.000</td>
      <td id="T_76227_row1_col1" class="data row1 col1" >0.131</td>
      <td id="T_76227_row1_col2" class="data row1 col2" >0.161</td>
      <td id="T_76227_row1_col3" class="data row1 col3" >0.100</td>
      <td id="T_76227_row1_col4" class="data row1 col4" >0.000</td>
      <td id="T_76227_row1_col5" class="data row1 col5" >0.390</td>
    </tr>
    <tr>
      <th id="T_76227_level1_row2" class="row_heading level1 row2" >explanation</th>
      <td id="T_76227_row2_col0" class="data row2 col0" >0.000</td>
      <td id="T_76227_row2_col1" class="data row2 col1" >0.216</td>
      <td id="T_76227_row2_col2" class="data row2 col2" >0.207</td>
      <td id="T_76227_row2_col3" class="data row2 col3" >0.050</td>
      <td id="T_76227_row2_col4" class="data row2 col4" >0.000</td>
      <td id="T_76227_row2_col5" class="data row2 col5" >0.471</td>
    </tr>
    <tr>
      <th id="T_76227_level0_row3" class="row_heading level0 row3" rowspan="3">gpt-4</th>
      <th id="T_76227_level1_row3" class="row_heading level1 row3" >basic</th>
      <td id="T_76227_row3_col0" class="data row3 col0" >0.764</td>
      <td id="T_76227_row3_col1" class="data row3 col1" >0.551</td>
      <td id="T_76227_row3_col2" class="data row3 col2" >0.837</td>
      <td id="T_76227_row3_col3" class="data row3 col3" >0.200</td>
      <td id="T_76227_row3_col4" class="data row3 col4" >0.000</td>
      <td id="T_76227_row3_col5" class="data row3 col5" >0.912</td>
    </tr>
    <tr>
      <th id="T_76227_level1_row4" class="row_heading level1 row4" >chain_of_thought</th>
      <td id="T_76227_row4_col0" class="data row4 col0" >0.568</td>
      <td id="T_76227_row4_col1" class="data row4 col1" >0.818</td>
      <td id="T_76227_row4_col2" class="data row4 col2" >0.506</td>
      <td id="T_76227_row4_col3" class="data row4 col3" >0.200</td>
      <td id="T_76227_row4_col4" class="data row4 col4" >0.000</td>
      <td id="T_76227_row4_col5" class="data row4 col5" >0.718</td>
    </tr>
    <tr>
      <th id="T_76227_level1_row5" class="row_heading level1 row5" >explanation</th>
      <td id="T_76227_row5_col0" class="data row5 col0" >0.631</td>
      <td id="T_76227_row5_col1" class="data row5 col1" >0.728</td>
      <td id="T_76227_row5_col2" class="data row5 col2" >0.701</td>
      <td id="T_76227_row5_col3" class="data row5 col3" >0.167</td>
      <td id="T_76227_row5_col4" class="data row5 col4" >0.000</td>
      <td id="T_76227_row5_col5" class="data row5 col5" >0.812</td>
    </tr>
  </tbody>
</table>


### Effect of chain lengths

## Discussion

blah


## Conclusions

blah


## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>

