package com.javatpoint.service;
import java.util.ArrayList;
import java.util.List;

import com.javatpoint.controller.StudentController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.javatpoint.model.Student;
import com.javatpoint.repository.StudentRepository;
@Service
public class StudentService
{
    private static final Logger log = LoggerFactory.getLogger(StudentService.class);
    @Autowired
    StudentRepository studentRepository;
    //getting all student records  
    public List<Student> getAllStudent()
    {
        List<Student> students = new ArrayList<Student>();
        studentRepository.findAll().forEach(student -> students.add(student));
        log.info(students.toString());
        return students;
    }
    //getting a specific record  
    public Student getStudentById(int id)
    {
        Student student = studentRepository.findById(id).get();
        log.info(student.toString());
        return student;
    }
    public void saveOrUpdate(Student student)
    {
        studentRepository.save(student);
    }
    //deleting a specific record  
    public void delete(int id)
    {
        studentRepository.deleteById(id);
    }
}