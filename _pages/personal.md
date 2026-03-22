---
layout: page
permalink: /personal/
title: Personal
nav: true
nav_order: 6
hide_title: true
---

{% assign p = site.data.personal %}

## Snowboarding

{{ p.snowboarding.intro }}

<div class="row mt-3">
  {% for photo in p.snowboarding.photos %}
  <div class="col-sm-4 mt-2 mt-md-0">
    {% include figure.liquid path=photo.path class="img-fluid rounded z-depth-1" caption=photo.caption zoomable=true %}
  </div>
  {% endfor %}
</div>

---

## Lottie [/ˈlɒti/]

{{ p.cat.intro }}

<div class="row mt-3">
  {% for photo in p.cat.photos %}
  <div class="col-sm-4 mt-2 mt-md-0">
    {% include figure.liquid path=photo.path class="img-fluid rounded z-depth-1" caption=photo.caption zoomable=true %}
  </div>
  {% endfor %}
</div>
