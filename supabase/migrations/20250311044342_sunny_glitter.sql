/*
  # Create students table

  1. New Tables
    - `students`
      - `id` (uuid, primary key)
      - `created_at` (timestamp)
      - `name` (text)
      - `email` (text, unique)
      - `phone` (text)
      - `dob` (date)
      - `course` (text)

  2. Security
    - Enable RLS on `students` table
    - Add policies for authenticated users to perform CRUD operations
*/

CREATE TABLE IF NOT EXISTS students (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at timestamptz DEFAULT now(),
  name text NOT NULL,
  email text UNIQUE NOT NULL,
  phone text NOT NULL,
  dob date NOT NULL,
  course text NOT NULL
);

ALTER TABLE students ENABLE ROW LEVEL SECURITY;

-- Allow authenticated users to read all students
CREATE POLICY "Users can read all students"
  ON students
  FOR SELECT
  TO authenticated
  USING (true);

-- Allow authenticated users to insert students
CREATE POLICY "Users can insert students"
  ON students
  FOR INSERT
  TO authenticated
  WITH CHECK (true);

-- Allow authenticated users to update students
CREATE POLICY "Users can update students"
  ON students
  FOR UPDATE
  TO authenticated
  USING (true)
  WITH CHECK (true);

-- Allow authenticated users to delete students
CREATE POLICY "Users can delete students"
  ON students
  FOR DELETE
  TO authenticated
  USING (true);