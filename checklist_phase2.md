# ✅ Phase 2 – Data Collection Checklist
**Project:** Groundwater Potential Prediction  
**Study Area:** Béni Mellal Province  
**Author:** Naim Ayoub  
**Start Date:** [Fill this in]  
**Tools:** QGIS, R, Browser, GitHub

---

## 📂 1. Boundary File
- [x] Download administrative boundary of Béni Mellal (shapefile)
- [x] Clip it to a manageable extent if needed
- [x] Import into QGIS and verify projection (EPSG code)
- [x] Save in `/data/` as `beni_mellal_boundary.shp`

---

## 🗺️ 2. Elevation (DEM)
- [x] Download DEM (30m or 90m) – SRTM or Copernicus
- [x] Clip to study area in QGIS
- [x] Save in `/data/` as `dem_beni_mellal.tif`
- [ ] Derive slope, aspect, curvature

---

## 🌧️ 3. Rainfall Data
- [ ] Choose a source: CHIRPS / NASA POWER
- [ ] Download monthly or annual averages (GeoTIFF or CSV)
- [ ] Convert to raster if needed
- [ ] Save as `rainfall_beni_mellal.tif` or `.csv`

---

## 🧱 4. Soil Map
- [ ] Find soil data: FAO / HWSD / national maps
- [ ] Clip to Béni Mellal
- [ ] Rasterize if needed
- [ ] Save in `/data/` as `soil_beni_mellal.tif`

---

## 🌾 5. Land Use / Land Cover (LULC)
- [ ] Source: ESA WorldCover / Copernicus
- [ ] Download raster or vector map
- [ ] Clip & reclassify LULC types
- [ ] Save as `lulc_beni_mellal.tif`

---

## 🌊 6. Drainage Network (from DEM)
- [ ] Generate flow accumulation & stream network (QGIS or GRASS)
- [ ] Calculate drainage density raster
- [ ] Save as `drainage_density.tif`

---

## 🪨 7. Lineaments / Geology (optional)
- [ ] Find geology or fault line data
- [ ] Create lineament density map (buffer or raster)
- [ ] Save as `lineament_density.tif`

---

## 🔘 8. Ground Truth / Well Data
- [ ] Obtain well locations (with yield/productivity)
- [ ] Classify into High / Medium / Low potential
- [ ] Format as `wells_beni_mellal.csv` or `.shp`

---

## ✅ Wrap-up for Phase 2
- [ ] All layers clipped to study area
- [ ] All raster layers aligned (CRS, resolution, extent)
- [ ] Metadata documented (source, date, format)
