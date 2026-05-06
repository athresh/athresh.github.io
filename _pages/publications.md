---
layout: page
permalink: /publications/
title: Publications
# description: publications and preprints
nav: true
nav_order: 2
---

<!-- _pages/publications.md -->

<!-- Bibsearch Feature -->

{% include bib_search.liquid %}

<h2>Preprints</h2>
<div class="publications">
{% bibliography --group_by none --query @*[pubtype=preprint]* %}
</div>

<h2>Conference Papers</h2>
<div class="publications">
{% bibliography --group_by none --query @*[pubtype=conference]* %}
</div>

<h2>Workshop Papers</h2>
<div class="publications">
{% bibliography --group_by none --query @*[pubtype=workshop]* %}
</div>

<h2>Tutorials</h2>
<div class="publications">
{% bibliography --group_by none --query @*[pubtype=tutorial]* %}
</div>
