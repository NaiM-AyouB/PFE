# 💧 Groundwater Potential Prediction Using Machine Learning  
### 🎓 Final Project – Bachelor's Degree in Water & Environmental Sciences  
🧑‍💻 OS: Manjaro Linux | Tools: R, QGIS, Machine Learning, GIS

---

## 📍 Study Area
**Béni Mellal Province, Morocco**

---

## 🎯 Project Overview

This project aims to predict **groundwater potential zones** using **machine learning algorithms** based on geospatial, topographic, and hydrologic indicators. The goal is to support sustainable groundwater exploration and well-siting in semi-arid Moroccan regions like Béni Mellal.

---

## 🧠 Objectives

- Collect and process spatial layers (elevation, rainfall, soil, etc.)
- Build a labeled dataset using well data and environmental indicators
- Train and evaluate machine learning models (e.g., Random Forest)
- Produce a classified **groundwater potential map**
- Present results via report, map visualizations, and presentation

---

## 🛠️ Tools & Technologies

### Programming
- **R** (main language)
  - Key packages: `raster`, `sf`, `terra`, `caret`, `randomForest`, `ggplot2`, `dplyr`, `rgdal`

### GIS & Remote Sensing
- **QGIS** (open-source GIS platform)
- **GDAL** (installed with QGIS, used by R internally)
- **GRASS GIS** *(optional)* — for hydrological analysis
- **SAGA GIS** *(optional)* — for terrain morphometry and raster tools

### OS Compatibility
- ✅ Fully compatible with **Manjaro Linux**
- Installed via:
  ```bash
  sudo pacman -S qgis gdal
  yay -S grass saga-gis
  ```

---

## 📁 Project Structure

```
project-root/
├── data/               # Input layers (DEM, soil, rainfall, etc.)
├── scripts/            # R scripts for modeling and processing
├── output/             # Maps, results, model outputs
├── report/             # Final written report
├── slides/             # Defense presentation
└── README.md           # Project overview and instructions
```

---

## 🧩 Data Layers (Inputs)

| Layer              | Description                         | Source                    |
|-------------------|-------------------------------------|---------------------------|
| DEM               | Elevation model (for slope, drainage) | SRTM / USGS / Copernicus  |
| Rainfall          | Long-term average or monthly totals | CHIRPS / NASA POWER       |
| Soil              | Soil classification                 | FAO / HWSD                |
| LULC              | Land use/land cover                 | Copernicus / ESA          |
| Drainage Density  | Derived from DEM                    | QGIS / GRASS tool         |
| Lineament Density | Optional (geological structures)    | From geology or satellite |
| Well Data         | Known locations and yields (labels) | ABH, Ministry, surveys    |

---

## 🤖 Machine Learning Approach

- Supervised learning using known well locations
- Models:
  - **Random Forest** (main)
  - Support Vector Machines (optional)
  - Logistic Regression (optional baseline)
- Evaluation:
  - Confusion matrix, accuracy, AUC
  - Feature importance
- Output:
  - Groundwater potential map: High / Medium / Low

---

## 🔧 Installation Instructions

### R + Required Packages

```r
install.packages(c(
  "raster", "sf", "terra", "rgdal", "caret",
  "randomForest", "dplyr", "ggplot2"
))
```

### QGIS + GIS Tools (Manjaro)

```bash
sudo pacman -S qgis gdal
yay -S grass saga-gis
```

---

## 🚀 Next Steps

1. Define study area boundary (shapefile for Béni Mellal)
2. Download base layers (DEM, rainfall, etc.)
3. Preprocess layers in QGIS (e.g., slope, drainage)
4. Load into R, label data, and build ML model
5. Generate final map and report

---

## 👨‍💻 Author

- **Name**: Naim Ayoub  
- **University**: École Supérieure de Technologie – Kelaa des Sraghna  
- **Academic Year**: 2025  
- **Operating System**: Manjaro Linux  

---

## 📄 License

This is an academic project for educational use only.
