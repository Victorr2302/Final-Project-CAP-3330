# R/clean_data.R
set.seed(42)
n <- 300

equipment_data <- data.frame(
  device_id = paste0("DEV-", 1001:(1000 + n)),
  device_type = sample(c("MRI", "CT Scanner", "Ventilator", "Ultrasound"), n, replace = TRUE),
  usage_category = sample(c("High-Use", "Standard-Use"), n, replace = TRUE, prob = c(0.4, 0.6)),
  device_age_years = round(runif(n, 1, 12), 1),
  operating_hours = round(runif(n, 500, 5000), 0),
  downtime_hours = round(rgamma(n, shape = 2, scale = 15), 1),
  last_service_months_ago = sample(1:24, n, replace = TRUE)
)

prob_failure <- plogis(-2 + 0.25 * equipment_data$device_age_years + 0.0005 * equipment_data$operating_hours)
equipment_data$unexpected_failure <- rbinom(n, 1, prob_failure)
equipment_data$log_date <- sample(seq(as.Date('2025/01/01'), as.Date('2025/12/31'), by="day"), n, replace = TRUE)

dir.create("data", showWarnings = FALSE)
write.csv(equipment_data, "data/equipment_data.csv", row.names = FALSE)
cat("Dataset saved successfully to data/equipment_data.csv\n")