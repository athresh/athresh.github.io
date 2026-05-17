---
layout: page
permalink: /photos/
title: Photos
description:
nav: true
nav_order: 6
images:
  photoswipe: true
_styles: >
  .graduation-gallery {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
    gap: 1rem;
    margin-top: 1.5rem;
  }

  .graduation-gallery a {
    color: inherit;
    text-decoration: none;
  }

  .graduation-gallery figure {
    margin: 0;
  }

  .graduation-gallery img {
    aspect-ratio: 4 / 3;
    border-radius: 0.25rem;
    display: block;
    object-fit: cover;
    width: 100%;
  }

  .graduation-gallery figcaption {
    color: var(--global-text-color-light);
    font-size: 0.875rem;
    margin-top: 0.45rem;
  }
---

## Ph.D. Hooding Ceremony

A few photos from my Ph.D. hooding ceremony at the University of Texas at Dallas in May 2026.

<div class="graduation-gallery pswp-gallery" id="graduation-gallery">
  <a
    href="{{ '/assets/img/graduation/grad-prof.jpg' | relative_url }}"
    data-pswp-width="1600"
    data-pswp-height="1200"
    target="_blank"
  >
    <figure>
      <img src="{{ '/assets/img/graduation/grad-prof.jpg' | relative_url }}" alt="Athresh Karanam at his Ph.D. hooding ceremony with Prof. Sriraam Natarajan">
      <figcaption>With Prof. Sriraam Natarajan</figcaption>
    </figure>
  </a>
  <a
    href="{{ '/assets/img/graduation/grad-lab.jpg' | relative_url }}"
    data-pswp-width="1600"
    data-pswp-height="1200"
    target="_blank"
  >
    <figure>
      <img src="{{ '/assets/img/graduation/grad-lab.jpg' | relative_url }}" alt="Athresh Karanam with the StARLinG Lab at his Ph.D. hooding ceremony">
      <figcaption>With the StARLinG Lab</figcaption>
    </figure>
  </a>
</div>
