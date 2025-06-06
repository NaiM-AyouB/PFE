# 🚀 Restart Plan – Groundwater Potential Prediction Project

**Author:** Naim Ayoub  
**Study Area:** Béni Mellal Province  
**Goal:** Start fresh with a clean, professional workflow

---

## 🗂️ Phase 1 – Setup

- [x] Create project folders: `data/`, `scripts/`, `output/`, `report/`, `slides/`
- [x] Create `README.md` and `checklist_phase2.md`
- [x] Download Béni Mellal boundary shapefile (e.g., from GADM)
- [x] Save it as `data/beni_mellal_boundary.shp`

---

## 🌍 Phase 2 – DEM Processing (Clean and Precise)

- [x] Download **ALL required DEM tiles** from EarthExplorer
- [x] Load all tiles into QGIS
- [x] Merge them into a single raster: `data/dem_merged.tif`
- [x] Clip merged DEM to Béni Mellal: `data/dem_beni_mellal.tif`
- [x] Reproject clipped DEM to UTM Zone 30N (EPSG:32630):  
      `data/dem_beni_mellal_utm.tif`

---

## 🏞️ Phase 3 – Terrain Layer Generation

**Use `dem_beni_mellal_utm.tif` as input for all:**

- [x] Generate slope map → `data/slope_beni_mellal.tif`
- [x] Generate aspect map → `data/aspect_beni_mellal.tif`
- [x] Generate curvature map → `data/curvature_beni_mellal.tif`
- [x] Generate flow accumulation → `data/flow_acc.tif`
- [x] Extract stream network → `data/streams.tif`
- [x] Generate drainage density → `data/drainage_density.tif`

---

## 🌿 Phase 4 – Environmental Layers

- [x] Download Rainfall data (NASA POWER or CHIRPS)
- [x] Download Soil map (FAO or national)
- [x] Download Land Use / Land Cover (ESA WorldCover)
- [x] Clip and reproject all rasters to match UTM + Béni Mellal

---

## 🧪 Phase 5 – Training Dataset Prep

- [x] Collect or simulate well locations and productivity levels
- [x] Label: High / Medium / Low groundwater potential
- [x] Extract raster values at each point (using Point Sampling Tool)
- [x] Create modeling-ready dataset (CSV or R dataframe)

---

## 🤖 Phase 6 – Machine Learning

- [x] Load data into R
- [x] Train models (Random Forest, SVM, Logistic Regression)
- [x] Evaluate metrics: Accuracy, AUC, Confusion Matrix
- [x] Generate classified groundwater potential map

---

## 📄 Phase 7 – Report and Presentation

- [x] Write full report: Intro → Method → Results → Conclusion
- [x] Prepare 10–15 slide presentation
- [x] Include maps, charts, methodology
- [x] Export everything in final folder

---

