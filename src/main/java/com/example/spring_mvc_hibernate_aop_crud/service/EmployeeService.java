package com.example.spring_mvc_hibernate_aop_crud.service;

import com.example.spring_mvc_hibernate_aop_crud.entity.Employee;

import java.util.List;

public interface EmployeeService {
    List<Employee> getAllEmployees();

    void saveEmployee(Employee employee);

    Employee getEmployeeById(int id);

    void deleteEmployeeById(int id);
}
