CREATE OR REPLACE TABLE missed_appointments.appointments_data_regression AS
select patient_id, appointment_id, gender, age, age_group, region, gov_aid, Hypertension, Diabetes, Alcoholism, Handicap, Chronic_patient, SMS_received,
  CASE WHEN missed = 'Yes' THEN 1 ELSE 0 END AS missed
from `missed-appointments-analysis.missed_appointments.appointments_data_transformed`