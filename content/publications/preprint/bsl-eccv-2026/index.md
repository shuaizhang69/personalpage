---
title: "Beyond a Single Light: A Large-Scale Aerial Dataset for Urban Scene Reconstruction Under Varying Illumination"
authors:
  - Zhuoxiao Li
  - Wenzong Ma
  - Taoyu Wu
  - Jinjing Zhu
  - Zhenchao Qi
  - Shuai Zhang
  - Jing Ou
  - Yinrui Ren
  - Weiqing Qi
  - Guobin Shen
  - Hui Xiong
  - Wufan Zhao
author_notes:
date: "2025-12-16T00:00:00Z"
publishDate: "2025-12-16T00:00:00Z"

# Publication type.
publication_types: ["preprint"]

# Publication name and optional abbreviated publication name.
publication: "*arXiv preprint arXiv:2512.14200*"
publication_short: "arXiv:2512.14200"

abstract: Recent advances in Neural Radiance Fields and 3D Gaussian Splatting have demonstrated strong potential for large-scale UAV-based 3D reconstruction tasks by fitting the appearance of images. However, real-world large-scale captures are often based on multi-temporal data capture, where illumination inconsistencies across different times of day can significantly lead to color artifacts, geometric inaccuracies, and inconsistent appearance. Due to the lack of UAV datasets that systematically capture the same areas under varying illumination conditions, this challenge remains largely underexplored. To fill this gap, we introduce SkyLume, a large-scale, real-world UAV dataset specifically designed for studying illumination robust 3D reconstruction in urban scene modeling. (1) We collect data from 10 urban regions comprising more than 100k high resolution UAV images (four oblique views and nadir), where each region is captured at three periods of the day to systematically isolate illumination changes. (2) To support precise evaluation of geometry and appearance, we provide per-scene LiDAR scans and accurate 3D ground-truth for assessing depth, surface normals, and reconstruction quality under varying illumination. (3) For the inverse rendering task, we introduce the Temporal Consistency Coefficient (TCC), a metric that measures cross-time albedo stability and directly evaluates the robustness of the disentanglement of light and material. We aim for this resource to serve as a foundation that advances research and real-world evaluation in large-scale inverse rendering, geometry reconstruction, and novel view synthesis.

# Summary. An optional shortened abstract.
summary: We introduce SkyLume, the first large-scale real-world UAV dataset with systematic illumination variation coverage (morning/noon/evening) across 10 urban regions with 100K+ images, paired with LiDAR ground truth. We propose the Temporal Consistency Coefficient (TCC) metric for evaluating illumination-robust inverse rendering.

tags:
  - 3D reconstruction
  - UAV photogrammetry
  - Illumination variation
  - 3D Gaussian Splatting
  - Neural Radiance Fields
  - Inverse rendering
  - Urban scene
  - Dataset

featured: false

hugoblox:
  ids:
    arxiv: "2512.14200"

links:
  - type: pdf
    url: https://arxiv.org/pdf/2512.14200
  # - type: code
  #   url: ""
  # - type: dataset
  #   name: "SkyLume Dataset"
  #   url: ""
  # - type: project
  #   url: ""
  # - type: slides
  #   url: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'SkyLume dataset overview: Multi-temporal UAV captures under varying illumination with LiDAR ground truth'
  focal_point: "center"
  preview_only: false

# Associated Projects (optional).
projects: []

# Slides (optional).
slides: ""
---


## Highlights

- **SkyLume Dataset**: The first comprehensive real-world UAV dataset centered on illumination variation, providing 6K resolution five-direction imagery from three daily captures (morning, noon, evening) along identical RTK-guided flight paths.
- **Large-Scale Coverage**: 10 urban regions, 100,000+ high-resolution images, covering over 7.21 km² with varying building densities (low/medium/high) and challenging scenarios including water bodies and glass facades.
- **High-Precision Ground Truth**: Per-scene LiDAR scans (DJI Zenmuse L2, 2cm accuracy at 150m) providing precise meshes, per-frame depth maps, and normal maps under unified 6-DoF poses.
- **Temporal Consistency Coefficient (TCC)**: A novel metric measuring cross-time albedo stability for evaluating inverse rendering robustness, combining MAE, RMSE, SSIM, and LPIPS across temporal slots.
- **Benchmark Results**: Comprehensive evaluation of state-of-the-art 3DGS-based methods (3DGS, 2DGS, Mip-Splatting, Abs-GS, CityGaussianV2, GS-IR, Ref-GS) revealing challenges in illumination-robust reconstruction.

## Dataset Overview

SkyLume is captured using a survey-grade UAV platform (DJI Matrice 350 RTK) equipped with:
- **CHCNAV C30 Aerial Oblique Camera**: 130MP total resolution (26MP × 5 lenses), 6252×4168 pixels, four 45° oblique views + one 90° nadir view
- **DJI Zenmuse L2 LiDAR**: Frame-scanning LiDAR with 5cm horizontal and 4cm vertical accuracy at 150m

**Data Collection Protocol:**
- Three time slots per scene: Early morning (07:00–09:00), Midday (11:00–13:00), Late afternoon (16:00–18:00)
- Flight altitude: ~120m AGL
- Forward overlap: 80%, Side overlap: 60%
- Synchronized five-view imagery at 1Hz

**Scene Categories:**
- **Small Scale**: Gym, Staff Residence, iPark, Tec School
- **Medium Scale**: Buildings, High School, Main Campus  
- **Large Scale**: Estate, Town, Med School

## Temporal Consistency Coefficient (TCC)

For inverse rendering evaluation, TCC measures albedo stability across illumination changes:

$$\text{TCC}_{\text{overall}} = \frac{1}{K}\sum_{k=1}^{K} \text{TCC}_{\text{comb}}^{(k)}$$

where $\text{TCC}_{\text{comb}}^{(k)}$ combines four metrics (MAE, RMSE, SSIM, LPIPS) at test viewpoint $v_k$ across three time slots.

**Key Findings:**
- Current inverse rendering methods (GS-IR, Ref-Gaussian, Ref-GS) struggle with temporal albedo consistency
- Albedo estimates retain time-dependent shadows and exposure variations
- Geometry reconstruction suffers from shadow-as-structure artifacts under strong sunlight

## Benchmark Results

**Novel View Synthesis (NVS)** under strong illumination:
- Abs-GS shows best robustness among NVS-oriented methods
- Octree-GS recovers fine structures effectively
- Standard 3DGS produces color artifacts at shadow boundaries

**Geometry Reconstruction:**
- CityGaussianV2 achieves best F-1 scores (0.790 at τ=0.75m) but brittle under hard shadows
- 2DGS and PGSR preserve mesh topology but lack geometric detail
- Cast shadows frequently overfit as solid structures

**Inverse Rendering:**
- Ref-GS achieves highest TCC Overall (0.775) but still shows significant temporal inconsistency
- TCC-MAE is the limiting factor (mean ~0.70), indicating appearance drift across time slots


