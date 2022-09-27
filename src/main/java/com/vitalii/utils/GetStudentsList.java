package com.vitalii.utils;

import com.vitalii.model.Student;

import java.util.ArrayList;

public class GetStudentsList {

    public ArrayList<Student> list() {
        ArrayList<Student> students = new ArrayList<Student>();

        for (int i = 0; i < 10; i++) {
            students.add(new Student("FirstName" + i, "LastName" + i));
        }

        return students;
    }
}
