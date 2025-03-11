import React, { useState } from 'react';
import { StudentForm } from './components/StudentForm';
import { StudentList } from './components/StudentList';
import { Student } from './types/student';
import { GraduationCap } from 'lucide-react';
import { Toaster } from 'react-hot-toast';

function App() {
  const [editingStudent, setEditingStudent] = useState<Student | undefined>();
  const [showForm, setShowForm] = useState(false);

  const handleSuccess = () => {
    setShowForm(false);
    setEditingStudent(undefined);
  };

  const handleEdit = (student: Student) => {
    setEditingStudent(student);
    setShowForm(true);
  };

  return (
    <div className="min-h-screen bg-gray-50">
      <Toaster position="top-right" />
      
      <header className="bg-white shadow">
        <div className="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
          <div className="flex justify-between items-center">
            <div className="flex items-center">
              <GraduationCap className="w-8 h-8 text-blue-600 mr-3" />
              <h1 className="text-3xl font-bold text-gray-900">
                Student Record Management System
              </h1>
            </div>
            <button
              onClick={() => setShowForm(!showForm)}
              className="px-4 py-2 text-sm font-medium text-white bg-blue-600 rounded-md hover:bg-blue-700"
            >
              {showForm ? 'View Students' : 'Add Student'}
            </button>
          </div>
        </div>
      </header>

      <main className="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
        <div className="px-4 py-6 sm:px-0">
          <div className="bg-white rounded-lg shadow p-6">
            {showForm ? (
              <StudentForm
                onSuccess={handleSuccess}
                initialData={editingStudent}
              />
            ) : (
              <StudentList onEdit={handleEdit} />
            )}
          </div>
        </div>
      </main>
    </div>
  );
}

export default App;