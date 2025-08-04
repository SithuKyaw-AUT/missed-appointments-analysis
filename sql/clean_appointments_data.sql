CREATE OR REPLACE TABLE missed_appointments.appointments_data_cleaned AS
SELECT
  CAST(PatientId AS STRING) AS patient_id,
  CAST(AppointmentID AS STRING) AS appointment_id,
  gender,
  CAST(ScheduledDay AS DATETIME) AS scheduled_datetime,
  EXTRACT(DATE FROM ScheduledDay) AS scheduled_date,
  CAST(AppointmentDay AS DATETIME) AS appointment_datetime,
  EXTRACT(DATE FROM AppointmentDay) AS appointment_date,
  Age,
  Neighbourhood,
  Scholarship,
  Hipertension AS Hypertension,
  Diabetes,
  Alcoholism,
  Handcap AS Handicap,
  SMS_received,
  CASE
    WHEN LOWER("No-show") = 'yes' THEN TRUE
    ELSE FALSE
  END AS missed
FROM `missed_appointments.appointments_data_raw`;
