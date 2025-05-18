SELECT p.id, p.first_name, p.last_name, a.appointment_date, a.status
FROM patients p
JOIN appointments a ON p.id = a.patient_id
WHERE a.doctor_id = 1;

SELECT mr.id, mr.diagnosis, mr.treatment, d.first_name AS doctor_first_name, d.last_name AS doctor_last_name
FROM medical_records mr
JOIN doctors d ON mr.doctor_id = d.id
WHERE mr.patient_id = 1;

SELECT d.id, d.first_name, d.last_name, COUNT(a.id) as appointment_count
FROM doctors d
LEFT JOIN appointments a ON d.id = a.doctor_id
GROUP BY d.id, d.first_name, d.last_name;

SELECT d.id, d.first_name, d.last_name, COUNT(dp.patient_id) as patient_count
FROM doctors d
LEFT JOIN doctor_patient dp ON d.id = dp.doctor_id
GROUP BY d.id, d.first_name, d.last_name;

UPDATE appointments
SET status = 'Completed'
WHERE id = 1;

DELETE FROM patients WHERE id = 4;

SELECT d.id, d.first_name, d.last_name, COUNT(dp.patient_id) as patient_count
FROM doctors d
JOIN doctor_patient dp ON d.id = dp.doctor_id
GROUP BY d.id, d.first_name, d.last_name
HAVING COUNT(dp.patient_id) > 5;

SELECT p.id, p.first_name, p.last_name, COUNT(mr.id) as diagnosis_count
FROM patients p
JOIN medical_records mr ON p.id = mr.patient_id
GROUP BY p.id, p.first_name, p.last_name
HAVING COUNT(mr.id) > 1;

SELECT 
    EXTRACT(YEAR FROM appointment_date) as year,
    TO_CHAR(appointment_date, 'Month') as month,
    COUNT(id) as appointment_count
FROM appointments
GROUP BY EXTRACT(YEAR FROM appointment_date), TO_CHAR(appointment_date, 'Month')
ORDER BY year, EXTRACT(MONTH FROM appointment_date);

CREATE INDEX idx_appointment_date ON appointments(appointment_date);