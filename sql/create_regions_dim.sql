CREATE OR REPLACE TABLE `missed_appointments.regions_dim` AS
SELECT
  ROW_NUMBER() OVER (ORDER BY Neighbourhood) AS region_id,
  Neighbourhood AS region_name
FROM (
  SELECT DISTINCT Neighbourhood
  FROM `missed_appointments.appointments_data_cleaned`
)
ORDER BY 1;
