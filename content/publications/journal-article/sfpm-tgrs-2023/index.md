---
title: "SLAM-Based Forest Plot Mapping by Integrating IMU and Self-Calibrated Dual 3-D Laser Scanners"
authors:
  - Dong Pan
  - Jie Shao
  - Shuhang Zhang
  - me
  - Bingtao Chang
  - Hao Xiong
  - Wuming Zhang
author_notes:
  - "Equal contribution"
  - "Corresponding author"
  - ""
  - ""
  - ""
  - ""
  - ""
date: "2023-08-23T00:00:00Z"
publishDate: "2023-08-23T00:00:00Z"

# Publication type.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "*IEEE Transactions on Geoscience and Remote Sensing*, vol. 61, 5703713"
publication_short: "IEEE Trans. Geosci. Remote Sens."

abstract: Efficiently and accurately measuring forest structure is of great significance for high-quality assessment of forest resources. Backpack laser scanning (BLS) has become a common device to acquire forest structural information due to its low cost and high time efficiency. However, complex forest environments bring challenges to BLS-based forest mapping, which faces problems with incomplete data and poor mapping accuracy. In this article, we design a disassembly-free dual-scanner BLS system for complete and accurate forest mapping. We first execute a high-precision automatic self-calibration of dual laser scanners by means of angle compensation and the fixed rotation angle. Then, a simultaneous localization and mapping (SLAM) framework by combining the natural feature of trees and inertial measurement unit (IMU) measurements is proposed, in which IMU provides prior motion estimation and motion compensation for dual scanners, and the natural feature of the forest is used to correct motion. The proposed method is validated in three small-scale forest plots with a size of 0.1 ha. Experimental results show well performance in terms of mapping accuracy, where the mean errors and the root square mean errors are less than 3.0 cm in both horizontal and vertical directions.

# Summary. An optional shortened abstract.
summary: This paper proposes a dual-scanner backpack LiDAR system with automatic self-calibration and a tightly-coupled SLAM framework integrating IMU and forest natural features, achieving centimeter-level accuracy (mean errors &lt; 3 cm) in forest plot mapping.

tags:
  - Backpack laser scanning (BLS)
  - Dual laser scanners
  - Forest inventory
  - Simultaneous localization and mapping (SLAM)
  - Inertial measurement unit (IMU)
  - Self-calibration
  - Point cloud mapping

featured: true

links:
  - type: pdf
    url: https://doi.org/10.1109/TGRS.2023.3307173
#   - type: code
#     url: ""
#   - type: dataset
#     name: "Forest Plot Dataset"
#     url: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'Designed BLS system and the framework overview'
  focal_point: "center"
  preview_only: false

# Associated Projects (optional).
projects: []

# Slides (optional).
slides: ""
---

&gt; [!NOTE]
&gt; Click the *Cite* button above to demo the feature to enable visitors to import publication metadata into their reference management software.

## Highlights

- **Disassembly-Free Dual-Scanner BLS System**: Designed a backpack laser scanning system integrating IMU with dual laser scanners (horizontal + inclined), where scanners can be folded into the backpack for protection without requiring disassembly.
- **High-Precision Automatic Self-Calibration**: Proposed a robust self-calibration method based on angle compensation and fixed rotation angles, achieving rotation errors less than 1° and translation errors around 1 cm even with limited overlapping FOV.
- **Forest-Specific SLAM Framework**: Developed a tightly-coupled SLAM framework that fuses IMU measurements with forest natural features (tree skeleton nodes and plane features), utilizing an iterated error-state Kalman filter for accurate motion estimation.
- **Centimeter-Level Accuracy**: Achieved mean errors and RMSE less than 3.0 cm in both horizontal and vertical directions across three challenging forest plots (0.1 ha each) with varying crown densities (0.25–0.96).
- **Superior Performance**: Outperformed state-of-the-art SLAM methods (LIO-SAM, FAST-LIO2, R-LINS, MULLS) with 60% lower planimetric errors and more regular trunk cross-sections.

## Methodology

The proposed system consists of three main components:

1. **Hardware System Design**:
   - **Dual Scanner Configuration**: One horizontal scanner (L1) for below-canopy information and SLAM processing, one inclined scanner (L2) for vertical forest information acquisition
   - **IMU Integration**: Rigidly connected IMU (200Hz) providing high-frequency motion estimation and point cloud de-skewing
   - **Wearable Platform**: Telescopic rod-based backpack system allowing scanners to fold for protection

2. **Dual-Scanner Self-Calibration**:
   - **Ground Extraction**: Automatic ground plane detection using RANSAC in both scanner coordinate systems
   - **Angle Compensation**: Cost function minimization using roll and pitch angles to align ground planes
   - **Rotation Parameters**: Euler angle computation with fixed yaw angles provided by manufacturer mounting base
   - **Translation Parameters**: Geometric calculation based on known installation distances and rotation angle θ (typically ~80°)

3. **SLAM Framework** (Iterated Error-State Kalman Filter):
   - **State Propagation**: IMU-based error state propagation with 200Hz frequency
   - **Motion Compensation**: Backpropagation for point cloud deskewing using IMU measurements
   - **Measurement Model**:
     - **Tree Skeleton Constraints**: Trunk skeleton nodes to centerline distance for strong horizontal constraints
     - **Plane Constraints**: Point-to-plane distance using ground and branch features for vertical constraints
   - **Iterative Update**: Maximum a posteriori (MAP) estimation combining prior IMU prediction and feature measurements

## Experimental Setup

Validation conducted in three forest plots in Zhuhai, Guangdong Province, China:

| Plot | Tree Species | Avg. Height | Avg. DBH | Stem Density | Crown Density | Terrain |
|:----:|:------------:|:-----------:|:--------:|:------------:|:-------------:|:-------:|
| 1 | Roystonea regia | 10 m | 18 cm | 445/ha | 0.25 | Flat |
| 2 | Ficus macrocarpa | 6 m | 16 cm | 1,010/ha | 0.96 | Dense planting |
| 3 | Eucalyptus | 26 m | 28 cm | 389/ha | 0.89 | Undulating |

- **Sensors**: Velodyne VLP-16 LiDAR ×2, LPMS-IG1 IMU, Leica BLK360 (reference TLS)
- **Trajectory**: "S"-shape scanning path at 0.6 m/s speed
- **Reference**: Multi-scan TLS with artificial reflectors for accuracy assessment

## Experimental Results

**Mapping Accuracy Comparison:**

| Method | Plot 1 RMSE (m) | Plot 2 RMSE (m) | Plot 3 RMSE (m) |
|:-------|:---------------:|:---------------:|:---------------:|
| MULLS | 0.059 | - (Failed) | - (Failed) |
| R-LINS | 0.056 | 0.087 | - (Failed) |
| FAST-LIO2 | 0.036 | 0.034 | 0.070 |
| LIO-SAM | 0.030 | 0.033 | 0.072 |
| **Ours** | **0.024** | **0.022** | **0.044** |

**Planimetric (Horizontal) Accuracy:**
| Plot | Mean (m) | RMSE (m) | SD (m) | MAX (m) |
|:----:|:--------:|:--------:|:------:|:-------:|
| 1 | 0.019 | 0.024 | 0.013 | 0.033 |
| 2 | 0.020 | 0.022 | 0.014 | 0.038 |
| 3 | 0.039 | 0.044 | 0.020 | 0.049 |

**Vertical (Z) Accuracy:**
| Plot | Mean (m) | RMSE (m) | SD (m) | MAX (m) |
|:----:|:--------:|:--------:|:------:|:-------:|
| 1 | 0.009 | 0.008 | 0.011 | 0.018 |
| 2 | 0.010 | 0.010 | 0.009 | 0.021 |
| 3 | 0.013 | 0.014 | 0.008 | 0.027 |

**Forest Parameter Extraction Accuracy:**
- **DBH (Diameter at Breast Height, 1.3m)**: Mean error ~0.015–0.022 m across three plots
- **Stem Curve**: Mean error ~0.015–0.020 m for diameter measurements at various heights

## Key Findings

1. **Calibration Robustness**: The proposed self-calibration method maintains consistency (rotation angle difference &lt; 1°, translation &lt; 1 cm) across diverse scenarios (room, road, grass, forest) without requiring additional calibration devices or overlapping FOV.

2. **Feature Superiority**: Tree skeleton nodes provide invariant geometric constraints compared to traditional edge/plane features, eliminating matching errors caused by cylindrical trunk symmetry and scanner motion.

3. **IMU-Fusion Benefits**: Tightly-coupled IMU integration prevents SLAM degradation in feature-sparse forest regions and enables effective point cloud deskewing, critical for mobile scanning in dense forests.

4. **Scalability**: Processing speed of ~0.03s per frame on standard laptop (Intel i5-12500H, 16GB RAM), enabling real-time forest mapping capabilities.

5. **Limitations**: Dense canopy environments (&gt;0.9 crown density) still pose challenges for complete above-canopy data acquisition; future work suggests integrating UAV laser scanning (ULS) for full crown coverage.