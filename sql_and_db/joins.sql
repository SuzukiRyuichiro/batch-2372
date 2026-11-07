-- get appointments with doctors info
select
  occurs_on,
  first_name,
  last_name
from
  appointments
  join doctors on appointments.doctor_id = doctors.id;

-- get appointments with doctor and patient names
select
  occurs_on,
  doctors.first_name as doctor_first_name,
  doctors.last_name as doctor_last_name,
  patients.first_name as patient_first_name,
  patients.last_name as patient_last_name
from
  appointments
  join doctors on appointments.doctor_id = doctors.id
  join patients on appointments.patient_id = patients.id;
