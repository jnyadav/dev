package com.cognizant.employee.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cognizant.employee.controller.Dto.EmployeeDto;
import com.cognizant.employee.entity.EmployeeEntity;
import com.cognizant.employee.service.EmployeeService;

@RestController
@RequestMapping("/employees")
public class EmployeeController {
	
	@Autowired
	EmployeeService employeeService;
	
	@GetMapping()
	public List<EmployeeDto> getAllEmployees(){
		return employeeService.getAllEmployees();
	}
	
	@GetMapping("/{employeeId}")
	public EmployeeDto getEmployeeById(@PathVariable Integer employeeId){
		return employeeService.getEmployeeById(employeeId);
	}
	
	
	  @PostMapping("/addEmployee") 
	  public EmployeeDto addEmployee(@RequestBody EmployeeDto emp) {
	  
	  return employeeService.updateEmployee(emp);
	  }
	 
		
	
	
	  @DeleteMapping("/deleteEmployee/{id}") 
	  public void deleteEmployee(@PathVariable int id) { 
		  employeeService.deleteEmployeeById(id); 
	  }
	  
	 
	
	@PostMapping("/{employeeId}")
	public EmployeeDto updateEmployee(@RequestBody EmployeeDto employeeDto) {
		return	employeeService.updateEmployee(employeeDto);
	}
	
}
