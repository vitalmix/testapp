package com.vitalii.control;

import com.vitalii.model.Student;
import com.vitalii.utils.GetStudentsList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
@RequestMapping("/students")
public class StudentController {

    @RequestMapping("/registration")
    public String studentRegistrationForm(Model model) {

        ArrayList<Student> students = new GetStudentsList().list();

        Student student = new Student();

        model.addAttribute("theNewStudent", student);

        model.addAttribute("registeredStudents", students);

        return "student-registration-form";
    }

    @RequestMapping("/student-confirmation")
    public String processStudentRegistrationForm(@ModelAttribute("theNewStudent") Student student) {

        System.out.println(student);

        return "student-confirmation";
    }
}
