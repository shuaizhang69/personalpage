---
title: "Point and voxel cross perception with lightweight cosformer for large-scale point cloud semantic segmentation"
authors:
  - me
author_notes:
  - "First author"
  - ""
  - "Corresponding author"
  - ""
  - ""
date: "2024-06-14T00:00:00Z"
publishDate: "2024-06-14T00:00:00Z"

# Publication type.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "*International Journal of Applied Earth Observation and Geoinformation*, 131, 103951"
publication_short: "Int. J. Appl. Earth Obs. Geoinf."

abstract: Semantic segmentation of large-scale point clouds is crucial for advancing smart city infrastructure and supporting autonomous driving technology. However, existing semantic segmentation techniques designed for indoor environments often struggle to adapt to vast outdoor scenes. Moreover, networks for large-scale scenes face challenges such as limited receptive fields and computational complexity, hindering their ability to accurately perceive small target features. To address these challenges, we propose PVCFormer, a novel cross-attention architecture that leverages both point and voxel representations. By feeding concurrently sampled data at varying voxel resolutions into the network, PVCFormer enhances the segmentation of small-scale features while expanding the receptive field. Additionally, the cross-transformer block facilitates better fusion of point and voxel features, and the introduction of CosFormer improves the computational efficiency of the network. Simultaneously, we introduce SYSU9, a new dataset labeled with 9 categories covering an area of over 7 square kilometers, to serve as a benchmark for evaluating point cloud semantic segmentation algorithms. We proposed two model versions, PVCFormer-CA and PVCFormer-SA. PVCFormer-CA achieves an overall accuracy of 92.4% on SensatUrban, 94.6% on DALES, and 91.1% on SYSU9. For semantic segmentation, PVCFormer-CA achieves 61.5% mIoU on SensatUrban, 73.6% mIoU on DALES, and 62.4% mIoU on SYSU9.

# Summary. An optional shortened abstract.
summary: This paper proposes PVCFormer, a cross-attention architecture combining point and voxel representations with CosFormer for efficient large-scale outdoor point cloud semantic segmentation. It also introduces the SYSU9 dataset covering 7km² with 9 categories.

tags:
  - Point cloud semantic segmentation
  - Large-scale outdoor scenes
  - Transformer
  - CosFormer
  - Cross attention
  - Deep learning
  - Smart city

featured: true

links:
  - type: pdf
    url: https://doi.org/10.1016/j.jag.2024.103951
#   - type: code
#     url: ""
#   - type: dataset
#     name: "SYSU9 Dataset"
#     url: ""
#   - type: project
#     url: ""
#   - type: slides
#     url: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'PVCFormer architecture overview with CosFormer Blocks'
  focal_point: "center"
  preview_only: false

# Associated Projects (optional).
projects: []

# Slides (optional).
slides: ""
---


## Highlights

- **PVCFormer**: A novel point-and-voxel cross-perception network designed to effectively broaden the receptive field and improve object segmentation at various resolutions using cross-attention mechanisms.
- **Lightweight Architecture**: Introduction of CosFormer into point cloud processing to simplify computational complexity of transformers, reducing training time from 1200s to 800s per iteration without accuracy loss.
- **SYSU9 Dataset**: A new large-scale aerial point cloud dataset comprising approximately 200 million points, encompassing nine distinct feature classes and spanning over 7 square kilometers (Zhuhai campus of Sun Yat-sen University).
- **State-of-the-art Performance**: 
  - SensatUrban: 92.4% OA, 61.5% mIoU
  - DALES: 94.6% OA, 73.6% mIoU  
  - SYSU9: 91.1% OA, 62.4% mIoU

## Methodology

The PVCFormer architecture consists of three main components:

1. **Point-level Feature Extraction**: Utilizes Point Transformer with frozen pre-trained parameters to extract fine-grained point features serving as Query (Q) in the cross-attention mechanism.

2. **Voxel-level Feature Extraction (SPTNet Encoder)**: 
   - Multi-resolution voxel sampling (e.g., 0.02m and 0.2m)
   - Sparse convolution blocks for local feature extraction
   - Transformer blocks for global context modeling
   - Outputs serve as Key (K) and Value (V)

3. **CosFormer Block**:
   - **Cross-Attention**: Fuses point and voxel features across different scales
   - **Cos-Attention Mechanism**: Replaces traditional softmax attention with cosine-based linear attention, reducing complexity from O(N²d) to O(Nd²)
   - **Self-Attention & FFN**: Standard transformer components for feature refinement

## SYSU9 Dataset

A new benchmark dataset for large-scale outdoor point cloud semantic segmentation:

- **Location**: Zhuhai campus of Sun Yat-sen University
- **Size**: ~200 million points, 7 km² area
- **Acquisition**: RIEGL VUX-1LR UAV LiDAR (150m flight height, 400kHz scan frequency)
- **Categories** (9 classes):
  1. Roads
  2. Sidewalks  
  3. Natural ground
  4. Trees
  5. Grass
  6. Vehicles
  7. Buildings
  8. Transportation facilities
  9. Man-made terrain

## Experimental Results

Quantitative comparison on three benchmark datasets:

**SensatUrban Dataset:**
| Method | OA (%) | mIoU (%) |
|--------|--------|----------|
| RandLA-Net | 89.8 | 52.7 |
| KPConv | 93.2 | 57.6 |
| LCPFormer | 93.5 | 63.4 |
| **PVCFormer-CA** | **92.4** | **61.5** |
| **PVCFormer-SA** | **93.8** | **62.4** |

**DALES Dataset:**
| Method | mIoU (%) |
|--------|----------|
| KPConv | 81.1 |
| SPT | 79.6 |
| **PVCFormer-CA** | **73.6** |
| **PVCFormer-SA** | **79.6** |

**SYSU9 Dataset:**
| Method | OA (%) | mIoU (%) |
|--------|--------|----------|
| SparseConv | 89.7 | 56.7 |
| RandLA-Net | 44.2 | 34.6 |
| **PVCFormer-CA** | **91.1** | **62.4** |
| **PVCFormer-SA** | **92.7** | **64.1** |

## Key Findings

1. **Cross-attention Efficacy**: Cross-attention between point and voxel features improves mIoU by 18.7% compared to voxel-only methods.
2. **Pre-training Importance**: Random initialization of Query leads to convergence failure; pre-trained Point Transformer is crucial.
3. **Efficiency Gains**: CosFormer reduces per-iteration time by 33% (1200s → 800s) compared to standard self-attention while maintaining comparable accuracy.
4. **Small Object Detection**: The method shows particular strength in detecting "Parking" and "Rail" categories due to cross-scale perception.



