package cn.edu.hust.myspringboot.controller;

import cn.edu.hust.myspringboot.entity.Student;
import cn.edu.hust.myspringboot.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
@RequestMapping("stu")
public class StudentController {
    @Autowired
    private StudentRepository studentRespository;
    @PostMapping("/add")
    private Student addStudent(Student student){
        return studentRespository.save(student);
    }
}
