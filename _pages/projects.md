---
layout: page
permalink: /projects/
title: Projects
nav: true
nav_order: 3
hide_title: true
_styles: >
  .project-card {
    border: 1px solid #e0e0e0;
    border-radius: 8px;
    padding: 1.5rem 2rem;
    margin-bottom: 1.8rem;
    transition: box-shadow 0.2s ease, transform 0.2s ease;
    background: #fff;
  }
  .project-card:hover {
    box-shadow: 0 4px 20px rgba(0,0,0,0.10);
    transform: translateY(-2px);
  }
  .project-header {
    display: flex;
    justify-content: space-between;
    align-items: baseline;
    margin-bottom: 0.4rem;
    flex-wrap: wrap;
    gap: 0.3rem;
  }
  .project-title {
    font-size: 1.15rem;
    font-weight: 700;
    margin: 0;
    color: #B31B1B;
  }
  .project-date {
    font-size: 0.82rem;
    color: #999;
    white-space: nowrap;
  }
  .project-tags {
    margin-bottom: 0.9rem;
  }
  .project-tag {
    display: inline-block;
    font-size: 0.72rem;
    padding: 0.15rem 0.55rem;
    border-radius: 20px;
    background: #f3f3f3;
    color: #555;
    margin-right: 0.3rem;
    margin-bottom: 0.25rem;
  }
  .project-body {
    display: flex;
    gap: 1.8rem;
    align-items: flex-start;
  }
  .project-content {
    flex: 1;
    min-width: 0;
  }
  .project-thumb {
    width: 200px;
    flex-shrink: 0;
    border-radius: 6px;
    object-fit: cover;
  }
  .project-live-embed {
    margin-top: 1.4rem;
    border-radius: 8px;
    overflow: hidden;
    border: 1px solid #e0e0e0;
  }
  .project-live-embed__label {
    font-size: 0.72rem;
    color: #999;
    margin-bottom: 0.4rem;
    display: flex;
    align-items: center;
    gap: 0.35rem;
  }
  .project-live-embed__label::before {
    content: "●";
    color: #4caf50;
    font-size: 0.6rem;
  }
  .project-live-embed iframe {
    display: block;
    width: 100%;
    border: none;
  }
  .project-thumb-below {
    display: block;
    width: 100%;
    max-height: 300px;
    object-fit: cover;
    border-radius: 6px;
    margin-top: 1.2rem;
  }
  .project-desc {
    color: #333;
    margin-bottom: 0.6rem;
    line-height: 1.65;
    font-size: 0.93rem;
  }
  .project-contributions {
    margin: 0.5rem 0 0.9rem 0;
    padding-left: 1.2rem;
  }
  .project-contributions li {
    margin-bottom: 0.3rem;
    color: #444;
    font-size: 0.88rem;
    line-height: 1.5;
  }
  .project-links {
    display: flex;
    flex-wrap: wrap;
    gap: 0.45rem;
    margin-top: 0.8rem;
  }
  .project-link-btn {
    font-size: 0.78rem;
    padding: 0.22rem 0.7rem;
    border: 1px solid #ccc;
    border-radius: 4px;
    color: #444;
    text-decoration: none !important;
    transition: all 0.15s;
    line-height: 1.6;
  }
  .project-link-btn:hover {
    background: #B31B1B;
    border-color: #B31B1B;
    color: #fff !important;
  }
  .project-img-stack {
    margin-top: 1.2rem;
    display: flex;
    flex-direction: column;
    gap: 1.2rem;
  }
  .project-img-stack figure {
    margin: 0;
  }
  .project-img-stack figcaption {
    font-size: 0.78rem;
    color: #666;
    margin-bottom: 0.35rem;
    font-style: italic;
  }
  .project-img-stack img {
    width: 100%;
    border-radius: 5px;
    border: 1px solid #e0e0e0;
    display: block;
  }
---

<p style="color: #666; margin-bottom: 2rem;">Highlighted projects spanning research, industry internships, and personal open-source work.</p>

<!-- ─── HeuriGym ─────────────────────────────────────────────── -->
<div class="project-card">
  <div class="project-header">
    <span class="project-title">HeuriGym: An Agentic Benchmark for LLM-Crafted Heuristics</span>
  </div>
  <div class="project-tags">
    <span class="project-tag">LLM</span>
    <span class="project-tag">Benchmark</span>
    <span class="project-tag">Combinatorial Optimization</span>
  </div>
  <div class="project-body">
    <div class="project-content">
      <p class="project-desc">
        An agentic benchmark that evaluates how well LLMs can craft heuristics for real-world NP-hard combinatorial optimization problems. Introduces the <strong>Quality-Yield Index (QYI)</strong>, a unified metric capturing both solution feasibility and quality.
      </p>
      <ul class="project-contributions">
        <li>Designed 10 CO problems with hundreds of instances spanning domains of transportation, electronic design automation, computational biology, and more.</li>
        <li>Found that SOTA models can already achieve <strong>over 75% of expert performance</strong> on QYI (as of 03/2026).</li>
        <li>Accepted at <strong>ICLR 2026</strong> and presented at NeurIPS 2025 MATH-AI Workshop.</li>
      </ul>
      <div class="project-links">
        <a class="project-link-btn" href="https://cornell-zhang.github.io/heurigym/" target="_blank">Website</a>
        <a class="project-link-btn" href="https://github.com/cornell-zhang/heurigym" target="_blank">Code</a>
        <a class="project-link-btn" href="https://openreview.net/forum?id=HWxHUO15Yy" target="_blank">Paper</a>
      </div>
      <div class="project-live-embed">
        <p class="project-live-embed__label">Live</p>
        <iframe
          src="https://cornell-zhang.github.io/heurigym/#overview"
          height="620"
          scrolling="no"
          loading="lazy"
          title="HeuriGym Overall Performance"
          sandbox="allow-scripts allow-same-origin">
        </iframe>
      </div>
    </div>
  </div>
</div>

<!-- ─── Micro-Transit Zoning ─────────────────────────────────── -->
<div class="project-card">
  <div class="project-header">
    <span class="project-title">Smart Cities: Optimal Micro-Transit Zoning</span>
  </div>
  <div class="project-tags">
    <span class="project-tag">Smart Mobility</span>
    <span class="project-tag">Integer Programming</span>
    <span class="project-tag">Column Generation</span>
    <span class="project-tag">Reinforcement Learning</span>
  </div>
  <div class="project-body">
    <div class="project-content">
      <p class="project-desc">
        Micro-transit offer on-demand, affordable, and shared mobility services in low-density areas where fixed-route transit lacks coverage and ride-hailing is too expensive. A core design challenge is <strong>zoning</strong>: how to partition a region into service zones that maximize demand served under a operational budget. This project develops a suite of algorithms — from heuristics to exact optimization framework and reinforcement learning - for solving the Micro-Transit Zoning Problem at scale.
      </p>
      <ul class="project-contributions">
        <li><strong>3 papers spanning the full solution stack</strong>: heuristic + integer programming (ITSC 2025), scalable column generation for candidate zone generation (preprint), and end-to-end zone design via hierarchical RL (preprint).</li>
        <li>Validated on real-world travel demand from <strong>multiple major U.S. cities</strong> — demand pattern in <strong>Nashville, TN</strong> is shown below.</li>
        <li>Ongoing: extending the framework to integrate <strong>inter-zone demand</strong> - passengers whose trips span multiple zones.</li>
      </ul>
      <div class="project-img-stack">
        <figure>
          <figcaption>Demand Distribution in Nashville, TN (Out-Demand and In-Demand by H3 Hexagonal Region)</figcaption>
          <img src="/assets/img/projects/micro-transit/demand-nashville.png" alt="Nashville demand heatmaps" data-zoomable />
        </figure>
        <figure>
          <figcaption>Intra-Zone vs. Inter-Zone Trips</figcaption>
          <img src="/assets/img/projects/micro-transit/service-modes.png" alt="Intra-zone and inter-zone trips concept diagram" data-zoomable />
        </figure>
      </div>
    </div>
  </div>
</div>

<!-- ─── Online Shortest Path ─────────────────────────────────── -->
{% comment %}
<div class="project-card">
  <div class="project-header">
    <span class="project-title">Reliable Learning Algorithms for Online Shortest Path</span>
    <span class="project-date">Oct 2025 – Present</span>
  </div>
  <div class="project-tags">
    <span class="project-tag">Online Learning</span>
    <span class="project-tag">Bandits</span>
    <span class="project-tag">Routing</span>
  </div>
  <div class="project-body">
    <div class="project-content">
      <p class="project-desc">
        Investigates the <strong>reliable online shortest path problem</strong>, accounting for both mean and variance of travel times — a practical concern in real-time routing where predictability matters as much as speed.
      </p>
      <ul class="project-contributions">
        <li>Formulates the problem within a <strong>combinatorial multi-armed bandit</strong> framework.</li>
        <li>Develops a provably efficient <strong>Lower Confidence Bound (LCB)</strong> algorithm with regret guarantees.</li>
        <li>Working paper in preparation.</li>
      </ul>
    </div>
  </div>
</div>

<!-- ─── Deep RL for Ride-Sharing ─────────────────────────────── -->
<div class="project-card">
  <div class="project-header">
    <span class="project-title">End-to-End Deep RL for Combinatorially Constrained Ride-Sharing MDPs</span>
    <span class="project-date">May 2025 – Present</span>
  </div>
  <div class="project-tags">
    <span class="project-tag">Deep RL</span>
    <span class="project-tag">MDP</span>
    <span class="project-tag">Ride-Sharing</span>
  </div>
  <div class="project-body">
    <div class="project-content">
      <p class="project-desc">
        An end-to-end learning framework for Markov decision processes where the action space is combinatorially constrained — a fundamental challenge in fleet management and on-demand mobility.
      </p>
      <ul class="project-contributions">
        <li>Uses a <strong>GPT-based sequence model</strong> to learn dispatch policies from offline ride-sharing trajectories.</li>
        <li>Directly handles combinatorial action spaces without hand-crafted decomposition.</li>
      </ul>
    </div>
  </div>
</div>

<!-- ─── GNN for Ride-Pool Matching ────────────────────────────── -->
<div class="project-card">
  <div class="project-header">
    <span class="project-title">GNN-Based Pruning for High-Capacity Ride-Pool Matching</span>
    <span class="project-date">Nov 2023 – Nov 2024</span>
  </div>
  <div class="project-tags">
    <span class="project-tag">GNN</span>
    <span class="project-tag">Ride-Pooling</span>
    <span class="project-tag">Algorithmic Speed-Up</span>
  </div>
  <div class="project-body">
    <div class="project-content">
      <p class="project-desc">
        A GNN-based supervised learning model that prunes the request–trip–vehicle graph used in generating candidate shared trips for high-capacity ride-pooling systems.
      </p>
      <ul class="project-contributions">
        <li>Achieves a <strong>5× speed-up</strong> over hand-crafted heuristics in trip generation.</li>
        <li>Negligible impact on solution quality across real NYC taxi demand traces.</li>
        <li>Accepted at <strong>TRISTAN 2025</strong>.</li>
      </ul>
      <div class="project-links">
        <a class="project-link-btn" href="https://tristan2025.org/proceedings/TRISTAN2025_ExtendedAbstract_397.pdf" target="_blank">PDF</a>
      </div>
    </div>
  </div>
</div>

<!-- ─── VRP Semi-Autonomous ───────────────────────────────────── -->
<div class="project-card">
  <div class="project-header">
    <span class="project-title">Vehicle Routing in the Semi-Autonomous Driving Environment</span>
    <span class="project-date">Jan 2022 – Jun 2023</span>
  </div>
  <div class="project-tags">
    <span class="project-tag">VRP</span>
    <span class="project-tag">Autonomous Vehicles</span>
    <span class="project-tag">MILP</span>
  </div>
  <div class="project-body">
    <div class="project-content">
      <p class="project-desc">
        Formulates a novel vehicle routing problem for road networks with limited real-time autonomous vehicle support, bridging the gap between fully manual and fully autonomous fleet operations.
      </p>
      <ul class="project-contributions">
        <li>Provides a <strong>MILP formulation</strong> and a tractable two-phase algorithm for practical problem sizes.</li>
        <li>Poster presented at <strong>IPCO 2023</strong>; in revision at <em>European Journal of Operational Research</em>.</li>
      </ul>
      <div class="project-links">
        <a class="project-link-btn" href="https://arxiv.org/abs/2502.03655" target="_blank">arXiv</a>
      </div>
    </div>
  </div>
</div>
{% endcomment %}
