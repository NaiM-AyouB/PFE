# 🚀 Restart Plan – Groundwater Potential Prediction Project

**Author:** Naim Ayoub  
**Study Area:** Béni Mellal Province  
**Goal:** Start fresh with a clean, professional workflow

---

## 🗂️ Phase 1 – Setup

- [ ] Create project folders: `data/`, `scripts/`, `output/`, `report/`, `slides/`
- [ ] Create `README.md` and `checklist_phase2.md`
- [ ] Download Béni Mellal boundary shapefile (e.g., from GADM)
- [ ] Save it as `data/beni_mellal_boundary.shp`

---

## 🌍 Phase 2 – DEM Processing (Clean and Precise)

- [ ] Download **ALL required DEM tiles** from EarthExplorer
- [ ] Load all tiles into QGIS
- [ ] Merge them into a single raster: `data/dem_merged.tif`
- [ ] Clip merged DEM to Béni Mellal: `data/dem_beni_mellal.tif`
- [ ] Reproject clipped DEM to UTM Zone 30N (EPSG:32630):  
      `data/dem_beni_mellal_utm.tif`

---

## 🏞️ Phase 3 – Terrain Layer Generation

**Use `dem_beni_mellal_utm.tif` as input for all:**

- [ ] Generate slope map → `data/slope_beni_mellal.tif`
- [ ] Generate aspect map → `data/aspect_beni_mellal.tif`
- [ ] Generate curvature map → `data/curvature_beni_mellal.tif`
- [ ] Generate flow accumulation → `data/flow_acc.tif`
- [ ] Extract stream network → `data/streams.tif`
- [ ] Generate drainage density → `data/drainage_density.tif`

---

## 🌿 Phase 4 – Environmental Layers

- [ ] Download Rainfall data (NASA POWER or CHIRPS)
- [ ] Download Soil map (FAO or national)
- [ ] Download Land Use / Land Cover (ESA WorldCover)
- [ ] Clip and reproject all rasters to match UTM + Béni Mellal

---

## 🧪 Phase 5 – Training Dataset Prep

- [ ] Collect or simulate well locations and productivity levels
- [ ] Label: High / Medium / Low groundwater potential
- [ ] Extract raster values at each point (using Point Sampling Tool)
- [ ] Create modeling-ready dataset (CSV or R dataframe)

---

## 🤖 Phase 6 – Machine Learning

- [ ] Load data into R
- [ ] Train models (Random Forest, SVM, Logistic Regression)
- [ ] Evaluate metrics: Accuracy, AUC, Confusion Matrix
- [ ] Generate classified groundwater potential map

---

## 📄 Phase 7 – Report and Presentation

- [ ] Write full report: Intro → Method → Results → Conclusion
- [ ] Prepare 10–15 slide presentation
- [ ] Include maps, charts, methodology
- [ ] Export everything in final folder

---

Stay focused and don’t skip any step. You’re building something great 💪
