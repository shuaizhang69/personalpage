---
title: "Chat3D: Interactive understanding 3D scene-level point clouds by chatting with foundation model for urban ecological construction"
authors:
  - me
author_notes:
  - ""
  - "Corresponding author"
  - ""
  - ""
  - ""
  - ""
date: "2024-05-09T00:00:00Z"
publishDate: "2024-05-09T00:00:00Z"

# Publication type.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "*ISPRS Journal of Photogrammetry and Remote Sensing*, 212, 181-192"
publication_short: "ISPRS J. Photogramm. Remote Sens."

abstract: With the artificial intelligence technology development boom, large language models are demonstrating their potential in comprehension and creativity. Large language models such as GPT-4 and Gemini have been able to powerfully study for various professional-level exams. However, as a language model itself, its powerful comprehension can only be reflected in text sequences. Currently, although videos can be generated through the connection between 3D point clouds and large language models, there is currently no prompt project that directly interacts with one-dimensional through attribute calculation results. The point cloud data is also rich in information that can support various tasks of urban construction. For scene-level point cloud data, there has been a lot of research done on semantic segmentation, target detection, and other tasks. However, it is usually difficult to provide direct help to scene construction from the perception results. This paper presents a method for applying large language models to urban ecological construction by combining the results of 3D point cloud semantic segmentation. The objective is to integrate the prior knowledge and creative capabilities of Large Language Models (LLMs) within urban development with the outcomes derived from point cloud semantic segmentation results. This integration aims to establish an interactive point cloud intelligent analysis system, tailored for aiding decision-making processes in urban ecological civilization construction, thus presenting innovative perspectives for the advancement of smart city.

# Summary. An optional shortened abstract.
summary: This paper presents Chat3D, a method for applying large language models to urban ecological construction by combining the results of 3D point cloud semantic segmentation. The system establishes an interactive point cloud intelligent analysis framework that integrates LLMs' prior knowledge with point cloud semantic segmentation outcomes for urban ecological decision-making.

tags:
  - Point cloud understanding
  - Large language model
  - Urban ecological construction
  - Prompt engineering
  - 3D scene understanding
  - Smart city

featured: true

links:
  - type: pdf
    url: https://doi.org/10.1016/j.isprsjprs.2024.04.024
  - type: code
    url: ""
  - type: dataset
    name: "SYSU9 Dataset (Sun Yat-sen University)"
    url: ""
  - type: project
    url: ""
  - type: slides
    url: ""
  - type: video
    url: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'Chat3D architecture consisting of Translator and Generator modules'
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

- **Chat3D**: A comprehensive solution that utilizes semantic segmentation, distribution, geographic location, and other information derived from three-dimensional point cloud geographic features as prompts for LLMs.
- **Multi-level Prompt Engineering**: Utilization of various levels of prompts (coverage, layout/orientation, external geographical knowledge) obtained from 3D point cloud environment perception algorithms.
- **Accurate Ecological Assessment**: Experimental results show that Chat3D can accurately calculate the local eco-environmental index (EI). Specifically, based on Gemini's calculation, the EI is 82.5, representing an error of only 2.7 from the officially published result (EI = 85.8).
- **Urban Planning Support**: The generated reports on urban ecological construction can assess the probability of urban ecological risks and evaluate the rationality of the city's functional structure and adjustment programs.

## Methodology

The Chat3D architecture comprises two main components:

1. **Translator**: Converts scene-level point cloud semantic segmentation results into textual prompts recognizable by LLMs:
   - **Prompt (a)**: Coverage percentages for main categories (vegetation, buildings, water, etc.)
   - **Prompt (b)**: Geographical distribution and spatial orientation of categories
   - **Prompt (c)**: External geographical information and prior knowledge (climate, hydrology, etc.)

2. **Generator**: Employs pre-trained LLMs (ChatGPT, GPT-4, Gemini) to:
   - Calculate ecological environment indices (EI, VI, RI, LI, BI)
   - Generate comprehensive ecological analysis reports
   - Provide layout optimization suggestions for sustainable urban development

## Experimental Results

Experiments were conducted on the SYSU9 dataset (Sun Yat-sen University Zhuhai Campus, ~200 million points, 3.571 km²). The study area was segmented into 10 categories including trees, grassland, buildings, vehicles, roads, etc.

**Ecological Index Calculation Comparison:**
| Model | Environment Index | Error |
|-------|------------------|-------|
| ChatGPT | 62.7 | -23.1 |
| New Bing (GPT-4) | 93.0 | +7.2 |
| **Gemini** | **82.5** | **-3.3** |
| Ground Truth | 85.8 | - |

## Citation

```bibtex
@article{chen2024chat3d,
  title={Chat3D: Interactive understanding 3D scene-level point clouds by chatting with foundation model for urban ecological construction},
  author={Chen, Yiping and Zhang, Shuai and Han, Ting and Du, Yumeng and Zhang, Wuming and Li, Jonathan},
  journal={ISPRS Journal of Photogrammetry and Remote Sensing},
  volume={212},
  pages={181--192},
  year={2024},
  publisher={Elsevier},
  doi={10.1016/j.isprsjprs.2024.04.024}
}