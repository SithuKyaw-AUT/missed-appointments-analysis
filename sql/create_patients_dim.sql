CREATE OR REPLACE TABLE `missed_appointments.patients_dim` AS
SELECT
  DISTINCT
  patient_id,
  gender,
  age,
  scholarship,
  hypertension,
  diabetes,
  alcoholism,
  handicap
FROM `missed_appointments.appointments_data_cleaned`;