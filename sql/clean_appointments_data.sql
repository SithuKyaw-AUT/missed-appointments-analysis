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
  CASE 
    WHEN Scholarship = 0 THEN "No"
    ELSE "Yes"
  END AS gov_aid,
  CASE
    WHEN Hipertension = 0 THEN "No"
    ELSE "Yes"
  END AS Hypertension,
  CASE 
    WHEN Diabetes = 0 THEN "No"
    ELSE "Yes"
  END AS Diabetes,
  CASE
    WHEN Alcoholism = 0 THEN "No"
    ELSE "Yes"
  END AS Alcoholism,
  CASE
    WHEN Handcap = 0 THEN "No"
    ELSE "Yes" 
  END AS Handicap,
  CASE 
    WHEN SMS_received = 0 THEN "No"
    ELSE "Yes"
  END AS SMS_received,
  CASE 
    WHEN `No-show` is true THEN "Yes"
    ELSE "No" 
  END AS missed
FROM `missed_appointments.appointments_data_raw`
WHERE Age > 0;
