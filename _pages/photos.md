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
    href="{{ '/assets/img/graduation/grad_hooding.jpg' | relative_url }}"
    data-pswp-width="3712"
    data-pswp-height="5568"
    target="_blank"
  >
    <figure>
      <img src="{{ '/assets/img/graduation/grad_hooding.jpg' | relative_url }}" alt="Athresh Karanam during his Ph.D. hooding ceremony at the University of Texas at Dallas">
      <figcaption>Hooding ceremony</figcaption>
    </figure>
  </a>
  <a
    href="{{ '/assets/img/graduation/grad-prof.jpg' | relative_url }}"
    data-pswp-width="1600"
    data-pswp-height="1200"
    target="_blank"
  >
    <figure>
      <img src="{{ '/assets/img/graduation/grad-prof.jpg' | relative_url }}" alt="Athresh Karanam at his Ph.D. hooding ceremony with Prof. Sriraam Natarajan">
      <figcaption>With Prof. Sriraam Natarajan after the ceremony</figcaption>
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
  <a
    href="{{ '/assets/img/graduation/grad_prof.jpg' | relative_url }}"
    data-pswp-width="3712"
    data-pswp-height="4863"
    target="_blank"
  >
    <figure>
      <img src="{{ '/assets/img/graduation/grad_prof.jpg' | relative_url }}" alt="Athresh Karanam in graduation regalia with Prof. Sriraam Natarajan holding his diploma">
      <figcaption>Studio portrait with Prof. Sriraam Natarajan</figcaption>
    </figure>
  </a>
  <a
    href="{{ '/assets/img/graduation/grad_solo.jpg' | relative_url }}"
    data-pswp-width="3459"
    data-pswp-height="4526"
    target="_blank"
  >
    <figure>
      <img src="{{ '/assets/img/graduation/grad_solo.jpg' | relative_url }}" alt="Athresh Karanam in graduation regalia holding his diploma at the University of Texas at Dallas">
      <figcaption>Solo portrait with diploma</figcaption>
    </figure>
  </a>
</div>
