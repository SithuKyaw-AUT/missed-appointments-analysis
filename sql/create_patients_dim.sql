CREATE OR REPLACE TABLE `missed_appointments.patients_dim` AS
SELECT
  patient_id,
  ANY_VALUE(gender) AS gender,
  ANY_VALUE(age) AS age,
  ANY_VALUE(gov_aid) AS gov_aid,
  ANY_VALUE(hypertension) AS hypertension,
  ANY_VALUE(diabetes) AS diabetes,
  ANY_VALUE(alcoholism) AS alcoholism,
  ANY_VALUE(handicap) AS handicap
FROM `missed_appointments.appointments_data_cleaned`
GROUP BY patient_id;
