/*
  # Add Sample Student Data

  1. Data Changes
    - Insert 10 sample student records with:
      - name
      - email (unique)
      - phone
      - dob (date of birth)
      - course
    - Uses ON CONFLICT DO NOTHING to handle duplicate emails safely
*/

INSERT INTO students (name, email, phone, dob, course)
VALUES
  ('John Smith', 'john.smith@example.com', '+1-555-0123', '2000-03-15', 'Computer Science'),
  ('Emma Wilson', 'emma.wilson@example.com', '+1-555-0124', '2001-07-22', 'Business Administration'),
  ('Michael Chen', 'michael.chen@example.com', '+1-555-0125', '1999-11-30', 'Electrical Engineering'),
  ('Sarah Johnson', 'sarah.johnson@example.com', '+1-555-0126', '2002-01-18', 'Psychology'),
  ('David Brown', 'david.brown@example.com', '+1-555-0127', '2000-09-05', 'Mathematics'),
  ('Lisa Garcia', 'lisa.garcia@example.com', '+1-555-0128', '2001-04-12', 'Biology'),
  ('James Taylor', 'james.taylor@example.com', '+1-555-0129', '1999-08-25', 'Physics'),
  ('Maria Rodriguez', 'maria.rodriguez@example.com', '+1-555-0130', '2002-06-08', 'Chemistry'),
  ('Robert Kim', 'robert.kim@example.com', '+1-555-0131', '2000-12-03', 'Data Science'),
  ('Emily Davis', 'emily.davis@example.com', '+1-555-0132', '2001-02-28', 'Information Technology')
ON CONFLICT (email) DO NOTHING;