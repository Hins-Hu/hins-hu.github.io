---
layout: page
permalink: /publications/
title: Publications
nav: true
nav_order: 2
hide_title: true
---

<!-- _pages/publications.md -->

<!-- Bibsearch Feature -->

{% include bib_search.liquid %}

<div class="publications">

<h2>Working Papers</h2>

{% bibliography --file working_papers --group_by none %}

<h2 style="margin-top: 4rem;">Published / In Revision</h2>

{% bibliography %}

</div>
