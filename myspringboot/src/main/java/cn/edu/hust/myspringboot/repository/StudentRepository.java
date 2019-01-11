package cn.edu.hust.myspringboot.repository;

import cn.edu.hust.myspringboot.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student,Integer> {
}

