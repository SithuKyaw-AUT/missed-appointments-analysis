CREATE OR REPLACE TABLE `missed_appointments.appointments_fact` AS
SELECT
  a.appointment_id,
  a.patient_id,
  r.region_id,
  a.scheduled_datetime,
  a.scheduled_date,
  a.appointment_datetime,
  a.appointment_date,
  a.sms_received,
  a.missed
FROM `missed_appointments.appointments_data_cleaned` a
JOIN `missed_appointments.regions_dim` r
  ON a.Neighbourhood = r.region_name;