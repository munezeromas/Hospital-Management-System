INSERT INTO doctors (first_name, last_name, specialty, phone_number, email) VALUES
('John', 'Smith', 'Cardiology', '555-0101', 'john.smith@hospital.com'),
('Sarah', 'Johnson', 'Pediatrics', '555-0102', 'sarah.johnson@hospital.com'),
('Michael', 'Brown', 'Neurology', '555-0103', 'michael.brown@hospital.com');

INSERT INTO patients (first_name, last_name, date_of_birth, gender, phone_number, email) VALUES
('Emma', 'Wilson', '1990-05-15', 'F', '555-0201', 'emma.wilson@gmail.com'),
('James', 'Taylor', '1985-08-22', 'M', '555-0202', 'james.taylor@gmail.com'),
('Lisa', 'Anderson', '1975-03-10', 'F', '555-0203', 'lisa.anderson@gmail.com'),
('Robert', 'Martinez', '1995-11-30', 'M', '555-0204', 'robert.martinez@gmail.com');

INSERT INTO doctor_patient (doctor_id, patient_id) VALUES
(1, 1), (1, 2), (2, 2), (2, 3), (3, 1), (3, 4);

INSERT INTO appointments (doctor_id, patient_id, appointment_date, status) VALUES
(1, 1, '2025-06-01 09:00:00', 'Scheduled'),
(2, 2, '2025-06-01 10:00:00', 'Scheduled'),
(3, 1, '2025-06-02 14:00:00', 'Scheduled'),
(2, 3, '2025-05-15 11:00:00', 'Completed');

INSERT INTO medical_records (patient_id, diagnosis, treatment, doctor_id) VALUES
(1, 'Hypertension', 'Prescribed ACE inhibitors', 1),
(2, 'Flu', 'Rest and hydration', 2),
(1, 'Migraine', 'Prescribed triptans', 3),
(3, 'Asthma', 'Inhaler prescribed', 2);