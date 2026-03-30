---
title: "3D Detection and Morphological Analysis of Extraterrestrial Lava Tubes: A Case Study in Haikou, China"
authors:
  - me
  - Yiping Chen
  - Wuming Zhang
  - Shuhang Zhang
  - Dong Pan
  - Other co-authors
author_notes:
  - "First author"
  - ""
  - "Corresponding author"
  - ""
  - ""
date: "2024-01-01T00:00:00Z"
publishDate: "2024-01-01T00:00:00Z"

# Publication type.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "*Journal of Deep Space Exploration (Chinese and English)*, 2024, 11(4): 348-356"
publication_short: "J. Deep Space Explor."

abstract: Lava tubes are important geological structures for extraterrestrial exploration and potential habitats for future human missions. This study proposes a comprehensive 3D detection and morphological analysis workflow for lava tube exploration using handheld laser scanning technology. We utilized the SLAM100 handheld LiDAR scanner to conduct detailed surveys of Xianren Cave and Wolong Cave in Haikou, Hainan Province—analog sites for extraterrestrial lava tubes. The point cloud data were processed through statistical filtering and manual cropping for denoising, followed by 3D modeling using ContextCapture software to generate high-precision triangular mesh models. Additionally, a grid-based method was developed for skylight detection and morphological analysis. The results demonstrate that the proposed method can effectively capture the complex internal morphology of lava tubes, including flow textures (rope-like patterns), collapse features, and skylight structures. This research provides technical references for future robotic exploration and safety assessment of lunar and Martian lava tubes.

# Summary. An optional shortened abstract.
summary: This study presents a 3D detection workflow using SLAM100 handheld LiDAR for lava tube exploration, including point cloud processing, 3D modeling, and skylight detection, providing technical support for extraterrestrial cave exploration.

tags:
  - Lava tubes
  - Extraterrestrial exploration
  - Handheld laser scanning
  - SLAM100
  - Point cloud modeling
  - ContextCapture
  - 3D morphology
  - Skylight detection
  - Planetary geology

featured: true

links:
  - type: pdf
    url: ""
#   - type: code
#     url: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: '3D point cloud model of Xianren Cave lava tube showing internal structure and skylight features'
  focal_point: "center"
  preview_only: false

# Associated Projects (optional).
projects: []

# Slides (optional).
slides: ""
---

## Highlights

- **Novel Application of Handheld LiDAR**: First application of SLAM100 handheld laser scanning technology for detailed 3D documentation of terrestrial lava tubes as analogs for extraterrestrial exploration, offering high flexibility in narrow underground spaces.
- **Comprehensive 3D Reconstruction Workflow**: Integration of statistical filtering, manual denoising, and ContextCapture software for generating high-precision triangular mesh models from point cloud data, effectively preserving surface textures and flow patterns.
- **Skylight Detection Algorithm**: Development of a grid-based method for automatic detection and morphological analysis of skylights (circular openings), critical entry points for future robotic missions to lunar/Martian lava tubes.
- **Geomorphological Analysis**: Detailed documentation of internal lava tube features including side terraces, lava benches, rope-like flow textures, and collapse structures, providing analog data for planetary cave studies.
- **Technical Validation**: Successfully mapped Xianren Cave (~40m surveyed) and Wolong Cave (3km total length, 40m surveyed section) with 5cm absolute accuracy, demonstrating feasibility for future extraterrestrial applications.

## Methodology

The study establishes a complete workflow for lava tube 3D detection and analysis:

1. **Data Acquisition**:
   - **Sensor**: SLAM100 handheld laser scanner (270°×360° FOV, 5cm absolute accuracy, Class 1 laser)
   - **Study Sites**: Xianren Cave (仙人洞) and Wolong Cave (卧龙洞) in Haikou, Hainan Province
   - **Characteristics**: 
     - Xianren Cave: Large space, sediment blockage, side terraces, lava benches, rope-like flow textures, ceiling air pockets, bat habitats, local collapse with columnar jointed basalt
     - Wolong Cave: ~3km total length, 6m width, &lt;3m height in surveyed section
   - **Operational Parameters**: 2.5-hour battery life, -10°C to +45°C working temperature

2. **Point Cloud Processing**:
   - **Denoising**: Statistical outlier filtering combined with manual cropping to remove noise points while preserving geometric details
   - **Registration**: Automatic point cloud alignment and stitching using SLAM technology
   - **Segmentation**: Separation of wall points, floor deposits, and ceiling structures

3. **3D Modeling**:
   - **Software**: ContextCapture (Bentley Systems) for automated mesh generation
   - **Process**: 
     - Automatic point cloud partitioning into blocks
     - Triangular mesh generation for surface modeling
     - Model stitching and texture mapping
   - **Output**: High-fidelity 3D mesh models preserving surface roughness and geological features

4. **Skylight Detection**:
   - **Grid-based Method**: 
     - Voxelization of point cloud data
     - Detection of circular openings in ceiling structures
     - Morphological parameter extraction (diameter, depth, shape irregularity)
   - **Geomorphological Mapping**: Identification of collapse features, flow textures, and structural weaknesses

## Study Sites

**Xianren Cave (仙人洞)**:
- **Location**: Haikou, Hainan Province, China
- **Morphology**: Large interior space with sediment accumulation blocking parts of the passage
- **Features**: 
  - Side terraces and lava benches (flow residue)
  - Rope-like flow textures on walls
  - Air pockets in ceiling (current bat habitats)
  - Local collapse revealing columnar jointed basalt
- **Survey Length**: ~40m

**Wolong Cave (卧龙洞)**:
- **Location**: &lt;1km from Xianren Cave
- **Total Length**: ~3km
- **Surveyed Section**: ~40m length, ~6m width, &lt;3m height
- **Characteristics**: Large continuous pipe structure with intact flow features

## Experimental Results

**3D Modeling Accuracy**:
- **Absolute Accuracy**: 5cm (as per SLAM100 specifications)
- **Resolution**: Millimeter-level detail capture for flow textures
- **Coverage**: Complete 360° spherical scanning coverage in narrow passages

**Geomorphological Findings**:

| Feature Type | Description | Significance |
|:------------:|:-----------:|:------------:|
| Skylights | Near-circular openings in ceiling | Potential entry points for robots/astronauts |
| Lava Benches | Terraced structures on walls | Indicates past lava flow levels |
| Rope Textures | Pahoehoe-like flow patterns | Documents flow dynamics and cooling history |
| Columnar Joints | Hexagonal cooling fractures in basalt | Structural stability indicators |
| Collapse Zones | Ceiling/floor breakdown areas | Hazard assessment for exploration |

**Skylight Characteristics**:
- **Distribution**: Sparse and scattered along pipe length
- **Morphology**: Approximately circular openings in point cloud cross-sections
- **Detection Rate**: Successful identification of all major openings in surveyed sections

## Key Findings

1. **Operational Feasibility**: 
   - Handheld SLAM LiDAR proves highly operable in narrow, confined underground spaces (tunnels/caves) where traditional tripod-mounted TLS is impractical
   - Lightweight design (372×163×106mm) enables single-operator deployment in rough terrain

2. **Data Quality**:
   - Successfully captured fine-scale geological features (rope textures, cm-scale roughness) despite 5cm absolute accuracy specification
   - Point cloud density sufficient for detecting small-scale collapse precursors (cracks, thin ceilings)

3. **Morphological Insights**:
   - Lava tube cross-sections show elliptical to rectangular variations related to flow regime and cooling history
   - Skylights form preferentially at structural weak points where ceiling thickness is minimal

4. **Extraterrestrial Analog Value**:
   - Haikou basaltic lava tubes provide excellent analogs for lunar sinuous rilles and Martian lava tubes
   - Documented 3D morphological database supports design of exploration robots and habitat modules
   - Skylight detection method applicable to orbital LiDAR data for preliminary lunar/Martian cave identification

## Limitations and Future Work

- **Survey Coverage**: Current study limited to accessible portions (~40m) of longer cave systems; complete mapping requires multiple survey campaigns
- **Lighting Constraints**: Dark underground environments require artificial illumination, potentially affecting visual texture mapping quality
- **Data Gaps**: Highly irregular surfaces (rough walls, piles) cause localized point cloud gaps due to occlusion
- **Future Directions**:
  - Integration with photogrammetry for true-color texture mapping
  - Development of automated classification algorithms for lava tube features using machine learning
  - Application to rover-mounted LiDAR systems for autonomous planetary cave exploration