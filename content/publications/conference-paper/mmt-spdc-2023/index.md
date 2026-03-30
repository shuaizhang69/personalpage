---
title: "SPDC: A Super-Point and Point Combining Based Dual-Scale Contrastive Learning Network for Point Cloud Semantic Segmentation"
authors:
  - me
  - Weihong Huang
  - Yiping Chen
  - Shuhang Zhang
  - Wuming Zhang
  - Jonathan Li
author_notes:
  - "First author"
  - ""
  - "Corresponding author"
  - "Corresponding author"
  - ""
  - ""
date: "2023-05-24T00:00:00Z"
publishDate: "2023-05-24T00:00:00Z"

# Publication type.
publication_types: ["paper-conference"]

# Publication name and optional abbreviated publication name.
publication: "*The International Archives of the Photogrammetry, Remote Sensing and Spatial Information Sciences*, vol. XLVIII-1/W1-2023, pp. 571-578"
publication_short: "ISPRS Annals, XLVIII-1/W1-2023"

abstract: Semantic segmentation of point clouds is one of the fundamental tasks of point cloud processing and is the basis for other downstream tasks. Deep learning has become the main method to solve point cloud processing. Most existing 3D deep learning models require large amounts of point cloud data to drive them, but annotating the data requires significant time and economic costs. To address the problem of semantic segmentation requiring large amounts of annotated data for training, this paper proposes a Super-point-level and Point-level Dual-scale Contrast learning network (SPDC). To solve the problem that contrastive learning is difficult to train and feature extraction is not sufficient, we introduce super-point maps to assist the network in feature extraction. We use a pre-trained super-point generation network to convert the original point cloud into a super-point map. A dynamic data augmentation (DDA) module is designed for the super-point maps for super-point-level contrastive learning. We map the extracted super-point-level features back to the original point-level scale and conduct secondary contrastive learning with the original point features. The whole feature extraction network is parameter sharing and to reduce the number of parameters we used the lightweight network DGCNN (encoder)+Self-attention as the backbone network. And we did a few-shot pre-training of the backbone network to make the network converge easily. Analogous to CutMix, we designed a new method for point cloud data augmentation called PointObjectMix (POM). This method solves the sample imbalance problem while preserving the overall characteristics of the objects in the scene. We conducted experiments on the S3DIS dataset and obtained 63.3% mIoU. We have also done a large number of ablation experiments to verify the effectiveness of the modules in our method. Experimental results show that our method outperforms the best-unsupervised network.

# Summary. An optional shortened abstract.
summary: This paper proposes SPDC, a dual-scale contrastive learning network combining super-point and point-level features for self-supervised point cloud semantic segmentation, achieving 63.3% mIoU on S3DIS without full annotation.

tags:
  - Point cloud semantic segmentation
  - Self-supervised learning
  - Contrastive learning
  - Super-point
  - Data augmentation
  - Deep learning

featured: false

links:
  - type: pdf
    url: https://doi.org/10.5194/isprs-archives-XLVIII-1-W1-2023-571-2023
  # - type: code
  #   url: ""
  # - type: dataset
  #   name: "S3DIS Dataset"
  #   url: ""
  # - type: project
  #   url: ""
  # - type: slides
  #   url: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'SPDC architecture with dual-scale contrastive learning (super-point and point levels)'
  focal_point: "center"
  preview_only: false

# Associated Projects (optional).
projects: []

# Slides (optional).
slides: ""
---



## Highlights

- **SPDC Network**: A dual-scale contrastive learning framework operating at both super-point and point levels to reduce reliance on annotated data for point cloud semantic segmentation.
- **Super-Point Assisted Learning**: Introduces super-point maps to expand the receptive field and provide multi-scale feature representation, addressing insufficient feature extraction in standard contrastive learning.
- **PointObjectMix (POM)**: Novel object-level data augmentation method analogous to CutMix, solving sample imbalance while preserving structural semantic information of point cloud objects.
- **Dynamic Data Augmentation (DDA)**: Learnable augmentation module for super-point maps using MLP and noise signals to generate diverse positive samples for contrastive learning.
- **State-of-the-Art Performance**: Achieves **63.3% mIoU** on S3DIS dataset in the self-supervised setting, outperforming existing unsupervised methods (e.g., CrossPoint 58.4%, PointMatch 63.4%).

## Methodology

The proposed SPDC framework consists of two main channels:

**1. Pre-training Channel (Few-shot Learning)**
- **PointObjectMix (POM)**: Mixes objects from different scenes to create new training samples, balancing categories while maintaining geometric integrity
- **Lightweight Backbone**: Uses DGCNN with EdgeConv for local feature extraction plus Self-attention for global context modeling
- **Few-shot Pre-training**: Trains on less than 10% of ScanNetV2 data (100 scenes) to provide initial weights for downstream tasks

**2. Self-supervised Channel (Contrastive Learning)**
- **Super-Point Generation**: Converts point clouds into super-point maps using a lightweight PointNet-based network with learnable association mapping
- **Dynamic Data Augmentation (DDA)**: Generates augmented views via learnable affine transformations parameterized by MLPs and Gaussian noise
- **Dual-Scale Contrastive Learning**:
  - **Super-point level**: Contrastive learning between augmented super-point features (U¹ᴬ vs U²)
  - **Point level**: Contrastive learning between original point features and back-projected super-point features (Uᴾ vs U¹ᴬᴾ)
  - Uses NT-Xent loss with cosine similarity

## Experimental Results

**Dataset**: S3DIS (Stanford 3D Indoor Scene Dataset) - 271 rooms, 13 categories

**Comparison with Self-supervised Methods:**
| Method | Supervision | mIoU (%) |
|--------|-------------|----------|
| DGCNN | 100% | 56.1 |
| CrossPoint | 0% | 58.4 |
| PointSmile | 0% | 58.9 |
| PointMatch | 0.1% | 63.4 |
| **SPDC (Completed)** | **0%** | **63.3** |

**Ablation Study Results:**
| Configuration | mIoU (%) |
|---------------|----------|
| No pre-training | 51.3 |
| No super-point | 56.7 |
| No self-attention | 59.6 |
| **Full SPDC** | **63.3** |

Key findings:
- Pre-training channel provides crucial initialization for specific downstream tasks (+5.4% mIoU)
- Super-point features significantly improve segmentation by expanding receptive field (+2.9% mIoU)
- Self-attention layer enhances global context modeling (+3.7% mIoU)

