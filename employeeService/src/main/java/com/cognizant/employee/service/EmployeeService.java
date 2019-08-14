package com.cognizant.employee.service;

import java.util.List;
import java.util.Optional;

import com.cognizant.employee.controller.Dto.EmployeeDto;

public interface EmployeeService {
	
	List<EmployeeDto> getAllEmployees();
	
	EmployeeDto getEmployeeById(Integer EmployeeId);
	
	void deleteEmployeeById(int employeeId);
	
	EmployeeDto updateEmployee(EmployeeDto employeeDto);
	
}
