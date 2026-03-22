---
layout: page
permalink: /service/
title: Service
nav: true
nav_order: 5
hide_title: true
---

{% assign s = site.data.service %}

## Teaching Assistant

<table class="table table-sm table-borderless">
  <thead>
    <tr>
      <th>Course</th>
      <th>Code</th>
      <th>Term(s)</th>
      <th>Institution</th>
    </tr>
  </thead>
  <tbody>
    {% for course in s.teaching %}
    <tr>
      <td>{{ course.name }}</td>
      <td>{{ course.code }}</td>
      <td>{{ course.terms }}</td>
      <td>{{ course.institution }}</td>
    </tr>
    {% endfor %}
  </tbody>
</table>

## Reviewer Service

<ul style="line-height: 2;">
  {% for venue in s.reviewer %}
  <li>{{ venue }}</li>
  {% endfor %}
</ul>
