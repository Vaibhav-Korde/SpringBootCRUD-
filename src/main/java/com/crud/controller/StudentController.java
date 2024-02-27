package com.crud.controller;

import com.crud.enties.Student;
import com.crud.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/students")
public class StudentController {

    @Autowired
    StudentRepository studentRepository;

    @GetMapping
    public String listStudents(Model model) {

         model.addAttribute("students", studentRepository.findAll());

        return "list";
    }

    @GetMapping("/students/{id}")
    public Student getOneStudent(@PathVariable int id){
        Student student = studentRepository.findById(id).get();
        return student;
    }
    @GetMapping("/add")
    public String showAddForm(Student student) {
        return "add";
    }

    @PostMapping("/students/add")
    @ResponseStatus(HttpStatus.CREATED)
    public String addStudent(@RequestBody Student student){
        studentRepository.save(student);
        return "redirect:/students";
    }

//    @PutMapping("/update/{id}")
//    public String updateStudent(@PathVariable int id,Student student){
//        Optional<Student> students = studentRepository.findById(id);
//        if(students.isPresent()){
//            Student existingStudent = students.get();
//            existingStudent.setName(student.getName());
//            existingStudent.setBranch(student.getBranch());
//            existingStudent.setPercentage(student.getPercentage());
//
//            studentRepository.save(existingStudent);
//        }
//        return "redirect:/students";
//    }

    @DeleteMapping("/delete/{id}")
    public String deleteStudent(@PathVariable int id){
            studentRepository.deleteById(id);
           return "redirect:/students";
    }
}
