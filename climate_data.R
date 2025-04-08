# Load necessary packages
library(nasapower)
library(dplyr)
library(ggplot2)

# Define coordinates for Beni Mellal
lat <- 32.38
lon <- -6.36

# Fetch monthly climate data from NASA POWER API
climate_data <- get_power(
  community = "AG",
  lonlat = c(lon, lat),
  pars = c("PRECTOT", "T2M", "T2M_MIN", "T2M_MAX"),
  dates = c("2010-01-01", "2023-12-31"),
  temporal_average = "monthly"
)

# Clean column names
climate_clean <- climate_data %>%
  select(YEAR, MO, PRECTOT, T2M, T2M_MIN, T2M_MAX) %>%
  rename(
    year = YEAR,
    month = MO,
    precip = PRECTOT,
    temp_avg = T2M,
    temp_min = T2M_MIN,
    temp_max = T2M_MAX
  )

# Preview data
print(head(climate_clean))

# Plot precipitation over time
ggplot(climate_clean, aes(x = as.Date(paste(year, month, "01", sep = "-")))) +
  geom_line(aes(y = precip), color = "blue") +
  labs(title = "Monthly Precipitation in Beni Mellal-Khénifra", x = "Year", y = "Precipitation (mm)")

# Save cleaned data to CSV
if (!dir.exists("data")) dir.create("data")
write.csv(climate_clean, "data/climate_beni_mellal.csv", row.names = FALSE)
