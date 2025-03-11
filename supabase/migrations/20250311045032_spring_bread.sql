/*
  # Add RLS Policies for Students Table

  1. Security Changes
    - Enable RLS on students table
    - Add policies for:
      - SELECT: Allow authenticated users to read all student records
      - INSERT: Allow authenticated users to insert new students
      - UPDATE: Allow authenticated users to update student records
      - DELETE: Allow authenticated users to delete student records
*/

-- Enable RLS
ALTER TABLE students ENABLE ROW LEVEL SECURITY;

-- Policy for reading students (SELECT)
CREATE POLICY "Allow authenticated users to read students"
ON students
FOR SELECT
TO authenticated
USING (true);

-- Policy for inserting students (INSERT)
CREATE POLICY "Allow authenticated users to insert students"
ON students
FOR INSERT
TO authenticated
WITH CHECK (true);

-- Policy for updating students (UPDATE)
CREATE POLICY "Allow authenticated users to update students"
ON students
FOR UPDATE
TO authenticated
USING (true)
WITH CHECK (true);

-- Policy for deleting students (DELETE)
CREATE POLICY "Allow authenticated users to delete students"
ON students
FOR DELETE
TO authenticated
USING (true);